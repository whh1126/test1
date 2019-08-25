let Service = require('egg').Service;

class VoteService extends Service {
  /*
  * 发布
  * */
  async publishVote(obj) {
    console.log(obj);

    /*
    * 存到数据库
    * */

    let result = await this.app.mysql.insert('publishvote', {
      title: obj.title,
      info: obj.info,
      userId: obj.userId
    });


    obj.choose.forEach((item) => {
      this.app.mysql.insert("choose",{
        content: item.content,
        voteid: result.insertId,
        total: 0
      })
    });

    /*
    * this.app.mysql.get("表名",{userid:1}):取一条数据
    * this.app.mysql.select("表名"): 查询全部
    * this.app.mysql.select("表名",{
    *   where:{title:"好"},
    *   columns:["title","info"],
    *   limit:返回多少条,
    *   offset:页数(偏移量)
    * }):
    * this.app.mysql.insert("表名",{
    *   增加的信息
    * })
    *
    * this.app.mysql.delete("表名",{voteid:""})
    *
    * this.app.mysql.update("表名",{
    *   title: obj.title,
        info: obj.info,
        userId: obj.userId
    * },{
    * where:{
    *   voteid:"111"
    * }
    * })
    *
    * 多表联查 : 一起查两个表
    *
    * 写sql语句
    *
    * this.app.mysql.query(SQL)
    *
    * */

    if (result.affectedRows === 1) {
      return { msg: 'success', code: 1};
    } else {
      return { msg: 'fail', code: -1};
    }


    /*
    * 1:连接数据库
    * 2:数据库
    *   库
    *     表
    *       字段
    *       id:  主键  自增
    *
    *     多个表
    *       字段 varchar (255)  string   int:number   float:浮点 小数点   double:双精度浮点  .16
    *       text: 长文本
    *
    *
    * */
  }


  /*
  * 获取列表
  * */

  async getALlVote() {

    /*
    * 查询数据库
    * */

    // let resultChoose = await this.app.mysql.select('choose');
    // let result = await this.app.mysql.select('publishvote');
    // console.log(result);
    // console.log(resultChoose);

    const SQL_VOTE_LIST = `SELECT publishvote.userId,
    publishvote.title,
    publishvote.info,
    publishvote.voteid,
    choose.chooseid,
    choose.content,
    choose.total 
    from publishvote LEFT JOIN choose ON
    publishvote.voteid=choose.voteid
    `;

    let result = await this.app.mysql.query(SQL_VOTE_LIST);

    let newResult = [];

    result.forEach((item) => {
      //{title,userid,voteid}

      for (let i = 0; i < newResult.length; i++) {
        /*
        * 相同的voteid : 变成一个对象
        * */
        if (newResult[ i ].voteid === item.voteid) {
          newResult[ i ].choose.push(
            { content: item.content, chooseid: item.chooseid,total:item.total }
          );
          return;
        }
      }
      /*
      * 第一次
      * */
      newResult.push({
        voteid: item.voteid,
        title: item.title,
        userid: item.userid,
        choose: [
          { content: item.content, chooseid: item.chooseid,total:item.total }
        ]
      });
    });

    /*
    * 多表联查
    *
    *
    * */

    return newResult;

    /*
    *  返回结果
    *
    * */


  }

  /*
  * 投票
  * */
}

module.exports = VoteService;


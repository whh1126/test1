let Controller = require('egg').Controller;


class VoteController extends Controller {
  /*1:发布  2:获取   3:点投票  4:获取我发起的投票*/
  async publishVote() {
    /*
    * context : 请求  影响  调用service
    * */
    let { ctx } = this;
    /*
    * 校验参数
    * */

    try {
      ctx.validate({ title: 'string', info: 'string', choose: 'array', userId: 'number' });

    } catch (e) {
      ctx.status = 422;
      ctx.body = {msg:"fail", err: '参数出错', code: -1};
      return;
    }


    //静态页面

    /*
    * 参数
    * */
    console.log(ctx.request.body);


    ctx.status = 200;
    ctx.body =  {msg:"success", code: 1};

  }

}

module.exports = VoteController;

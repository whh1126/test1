'use strict';

const Service = require('egg').Service;
class GroupService extends Service {
    /*
    * 添加小组
    * */
    async addGroup(body) {
        let result = await this.app.mysql.insert('group', {
            groupName: body.groupName,
            groupPersonNum: body.groupPersonNum,
            leaderUserName: body.leaderUserName,
            groupIcon: body.groupIcon || 'http://img0.imgtn.bdimg.com/it/u=2240033465,1427047201&fm=26&gp=0.jpg',
        });

        if (result.affectedRows === 1) {
            return { message: 'success', code: 1 };
        } else {
            return { message: 'fail', code: -1 };
        }
    }
}

module.exports = GroupService;

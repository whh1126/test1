'use strict';
const Service = require('egg').Service;
class GroupService extends Service {
    async addGroup() {
        let { ctx } = this;
        try {
            ctx.validate({
                groupName: 'string',
                groupPersonNum: 'number',
                leaderUserName: 'string',
                groupIcon: 'string'
            });

        } catch (e) {
            console.error(e);
            ctx.status = 422;
            ctx.body = {
                code: -1,
                message: '参数错误'
            };
            return;
        }

        ctx.body = await ctx.service.group.group.addGroup(ctx.request.body);
    }
}
module.exports = GroupService;

'use strict';

const Controller = require('egg').Controller;
/*引入qiniu库*/
var qiniu = require("qiniu");
/*添加了一个配置文件*/
var path = require('path');
var fs = require('fs');
var config=JSON.parse(fs.readFileSync(path.resolve(__dirname,"config.json")));

/*秘钥对象*/
var mac = new qiniu.auth.digest.Mac(config.AccessKey, config.SecretKey);

/*上传的信息 scope:哪一个空间  returnBody:返回的信息 key : 要和域名拼接  拼接好之后得到完整路径*/
var options = {
  scope: config.Bucket,
  returnBody:
    '{"key":"$(key)","hash":"$(etag)","fsize":$(fsize),"bucket":"$(bucket)","name":"$(x:name)"}'
};
/*上传的配置对象*/
var putPolicy = new qiniu.rs.PutPolicy(options);

class QiniuController extends Controller {
  async getToken() {
    const { ctx } = this;

    /*
    *
    * 生成token
    * */
    var token = putPolicy.uploadToken(mac);

    ctx.body = {
      uptoken:token,
      domain: config.Domain

    }
  }
}

module.exports = QiniuController;

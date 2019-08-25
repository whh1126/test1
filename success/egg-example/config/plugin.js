'use strict';
/** @type Egg.EggPlugin */
module.exports = {
  // had enabled by egg
  // static: {
  //   enable: true,
  // }
  cors : {
  enable: true,
  package: 'egg-cors'
}
};
exports.mysql = {
  enable: true,
  package: 'egg-mysql',
};

exports.validate = {
  enable: true,
  package: 'egg-validate'
};
exports.mysql = {
  // 单数据库信息配置
  client: {
    host: 'localhost',
    port: '3306',
    user: 'root',
    password: 'root',
    database: 'houtai'
  }
};


exports.jwt = {
  enable: true,
  package: ''
};

// exports.cors = {
//   enable: true,
//   package: 'egg-cors',
// };

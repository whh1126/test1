/* eslint valid-jsdoc: "off" */

'use strict';

/**
 * @param {Egg.EggAppInfo} appInfo app info
 */
module.exports = appInfo => {
  /**
   * built-in config
   * @type {Egg.EggAppConfig}
   **/
  const config = exports = {};

  // use for cookie sign key, should change to your own and keep security
  config.keys = appInfo.name + '_1564124825952_1394';

  // add your middleware config here
  config.middleware = [];

  // add your user config here
  config.middleware = [];
  config.cors = {
    origin: '*',
    // allowMethods: 'GET,HEAD,PUT,POST,DELETE,PATCH'
  };
//多出来的配置==========
// config.security = {
  // csrf: {
  //   enable: false,
  //   ignoreJSON: true
  // },
  // domainWhiteList: ['http://localhost:7001']
// };
 
function getKey() {
    return 'bao';
  }
  config.jwt = {
    secret: getKey()
  };

  // use for cookie sign key, should change to your own and keep security
  config.keys = getKey();
  exports.security = {
    xframe: {
      value: 'SAMEORIGIN',
    },
  };
  const userConfig = {
    // myAppName: 'egg',
  };
  return {
    ...config,
    ...userConfig,
  };
};




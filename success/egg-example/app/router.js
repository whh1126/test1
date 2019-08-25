'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
// module.exports = app => {
//   const { router, controller } = app;
//   router.get('/', controller.home.index);
// };
module.exports = app => {
  const { router, controller,jwt } = app;
  router.get('/', controller.home.index);
  router.get('/api/list', controller.news.list);
  router.get('/custom',controller.customCotroller.custonIndex)
  router.post('/group/add',jwt, controller.group.group.addGroup);
  
};



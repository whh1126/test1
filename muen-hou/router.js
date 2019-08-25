'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  const { router, controller } = app;
  router.get('/', controller.home.index);
  router.get('/muenList', controller.muendongtai.muenList.list);
  router.get('/myShopCar/:userId', controller.shopcar.myShopCar.list);
  router.post('/publishVote', controller.vote.publishVote);


};

import Vue from 'vue'
import Router from 'vue-router'
import Tabs from "../components/tabs/Tabs"
import Test from "../pages/test.vue"

Vue.use(Router)

export default new Router({
  routes: [

    {
      path: "/",
      redirect: "Test",
      component: Test
    }
    ,
   {
      path:"/tabs",
      name:"Tabs",
      component:Tabs
    }
  ]
})

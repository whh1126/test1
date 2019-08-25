import Home from "../pages/home/home"
import Login from "../pages/login/login";
import GIft from "../pages/gift/gift";
import Message from "../pages/message/message";
import Giftdetail from "../pages/gitfdetail/details";
import Liuyandetail from "../pages/liuyandetail/info";
import Shop from "../pages/shop/shop"
import Pic from "../pages/pic/pic";
import Prayer from "../pages/prayer/prayer";
import newMessage from "../pages/newMessage/newMessage"

const router = [
    {
        path: "/home",
        component: Home,
    }, {
        path: "/login",
        component: Login,
    }, {
        path: "/gift",
        component: GIft
    }, {
        path: "/message",
        component: Message
    }, {
        path: "/detail",
        component: Giftdetail
    }, {
        path: "/info",
        component: Liuyandetail,
        children: [{
            path: "/info/comment",
            component: Comment
        }]
    }, {
        path: "/shop",
        component: Shop
    }, {
        path: "/pic",
        component: Pic
    }, {
        path: "/prayer",
        component: Prayer
    }, {
        path: "/newMessage",
        component: newMessage
    }
]
export default router
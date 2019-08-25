import Mock from "mockjs";
//详情接口
Mock.mock("/api/details", {
    "details": [{
        price: 99,
        img: require('../../../../muen/mu/src/img/img2.jpg'),
        title: "项链",
        shop: "加入购物车",
        id:"@id",
        arr: [{
            text: "帮我选",
            icon: "iconfont icon_group",
            inner: "&#xeba0;"
        }, {
            text: "想要",
            icon: "iconfont icon_gift",
            inner: "&#xeb9c;"

        }, {
            text: 31,
            icon: "iconfont icon_likegood",
            inner: "&#xeba3;"
        }],
        add: [{
            deliver: "发货",
            address: "河南安阳",
            courier: "快递,免运费",

        }]
    }]
})
//留言接口
Mock.mock("/api/message", {
    "message": [{
        title: "沐恩云云",
        content: "为东欧祈祷，停止战乱，让人民不再受苦，不再流离失所。。。",
        time: 1564406454378,
        imgs: require('../../../../muen/mu/src/img/user1.jpg'),
        all: "全部留言",
        top: "置顶",
        edit: "编辑"
    }, {
        user: "沐恩三虎",
        online: "为上线成功祈祷,为上线成功祈祷",
        img: require('../../../../muen/mu/src/img/user2.jpg'),
        today: 1565676434378
    }]
})
//留言详情
Mock.mock('/api/board', {
    "board": [{
        userName: "沐恩三虎",
        text: "为上线成功祈祷",
        time: 2345678764543113,
        zan: "点赞",
        compt: "评论",
        pics: require('../../../../muen/mu/src/img/user2.jpg'),
        load: "加载更多"
    }]
})
//礼品接口
Mock.mock("/api/gift", {
    "gift|5": [{
        shop_Name: "项链",
        content: "精美精美精美",
        price: 99,
        pic: require('../../../../muen/mu/src/img/img2.jpg'),
        id:"@id"

    }]
})
//图片详情
Mock.mock("/api/pic", {
    "pic": [{
        pic: require('../../../../muen/mu/src/img/details.jpg')
    }]
})
//购物车
Mock.mock("/api/shop", {
    "shop": [{
        price: 52,
        title: "小项链",
        img: require('../../../../muen/mu/src/img/shop.jpg'),
        total: "合计",
        info: "告诉管理员",
        count: 1,
        zero: 0,
        sumPrice: 0,
        id:"@id"
    }]
})
//祷告接口
Mock.mock("/api/prayer", {
    "prayer": [{
        pics: require('../../../../muen/mu/src/img/user2.jpg'),
        userName: "沐恩三虎",
        text: "为上线成功祈祷",
        infos: "全部留言",
        tops: "置顶",
        timer: 12324657687909,
        edits: "编辑",
        id:55
    }, {
        xm: "沐恩王五",
        say: "为上线成功祈祷,为上线成功祈祷",
        spic: require('../../../../muen/mu/src/img/user2.jpg'),
        id:100

    }]
})
let dataw=Mock.mock({
    "list|30": [{
        name: "@cname",
        img: require('../../../../muen/mu/src/img/user2.jpg'),
        id: "@id",
        title: "@ctitle"
    }]
})

//评论和点赞内容接口
Mock.mock('/api/old', {
    "old|10": [{
        name: "@cname",
        img: "@image(80x80,@color)",
        id:"@id",
        title:"@ctitle"
    }]
})
//加载页面接口
Mock.mock('/api/page', ({ body }) => {
    const { page } = JSON.parse(body);
    let {list}=dataw;
    return list.slice(0,page*10)
})



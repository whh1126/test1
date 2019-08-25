// pages/home/index.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    userName: "",
    pwd: "",
    realName: ""
  },
  register(event) {
    console.log(this.data.userName);
    console.log(this.data.pwd);
    console.log(this.data.realName);

    wx.request({
      url: 'http://118.89.234.135:7001/register',
      data: {
        userName: this.data.userName,
        password: this.data.pwd,
        realName: this.data.realName
      },
      method:"POST",
      success:(res)=>{
        console.log(res);
        this.login()
      },
      
    })
  },

  login(){
    wx.request({
      url: "http://118.89.234.135:7001/login",
      method: "POST",
      data: {
        userName: this.data.userName,
        password: this.data.pwd,
      },
      success: (res) => {
        if (res.data.code === 1) {
          wx.setStorageSync("token", `Bearer ${res.data.token}`);

          wx.showToast({
            title: '登录成功',
            icon: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1565866211021&di=bab6ad39fe6291054d446eb07573acc2&imgtype=0&src=http%3A%2F%2Fwww.suunto.cn%2Fcontentassets%2F68413ff08c44496aae54ead7698b41df%2Ficon-success.png"
          })

          wx.navigateTo({
            url:"/pages/vote/index"
          })

        } else {
          wx.showToast({
            title: '登录失败',
            icon: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1565866180946&di=86042851945980344570ed49e05778d2&imgtype=0&src=http%3A%2F%2Fen.pimg.jp%2F009%2F667%2F513%2F1%2F9667513.jpg"
          })
        }
      },
      fail: (err) => {
        wx.showToast({
          title: '登录失败',
        })

      }
    })
  },

  inputUser(event) {
    this.setData({
      userName: event.detail.value

    })
  },
  inputPwd(event) {
    this.setData({
      pwd: event.detail.value

    })
  },
  inputRealName(event) {
    this.setData({
      realName: event.detail.value

    })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function(options) {

  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function() {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function() {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function() {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function() {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function() {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function() {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function() {

  }
})
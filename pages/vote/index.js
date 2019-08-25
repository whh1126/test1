// pages/vote/index.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    voteList:[]
  },

  /**
   * 生命周期函数--监听页面加载  created  
   */
  onLoad: function (options) {
    wx.request({
      url: 'http://118.89.234.135:7001/vote/allVote',
      header:{
        authorization:wx.getStorageSync("token")
      },
      success:(res)=>{
        this.setData({
          voteList:res.data

        })

      }
    })
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})
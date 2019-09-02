var app = getApp();

Page({
    data: {
        userInfo: app.globalData.userInfo,
        cards: [],
        avatarUrl: app.globalData.avatarUrl,
        nickName: app.globalData.nickName
    },
    onLoad: function () {
        if (app.globalData.userInfo) {
            this.setData({
                userInfo: app.globalData.userInfo,
                hasUserInfo: true
            })
        }
    }
});
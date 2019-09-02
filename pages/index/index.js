//index.js
//获取应用实例
const app = getApp();

Page({
    data: {
        userInfo: {},
        hasUserInfo: false,
        canIUse: qq.canIUse('button.open-type.getUserInfo'),
        courses: [
            {
                courseTitle: "政治易混易错点",
                isDue: [20,5,15],
                expectedTime: 15
            },
            {
                courseTitle: "物理学史",
                isDue: [20,0,0],
                expectedTime: 5
            }
        ],
        isDueColor:[
            "#3498DB",
            "#C0392B",
            "#27AE60"
        ],
        sumIsDue: 60,
        sumExpectedTime: 20
    },
    //事件处理函数
    goToToken: function () {
        qq.navigateTo({
            url: '../token/token'
        })
    },
    goToCourse: function () {
        qq.navigateTo({
            url: '../course/course'
        })
    },
    goToCard: function () {
        qq.navigateTo({
            url: '../card/card'
        })
    },
    goToMine: function () {
        qq.navigateTo({
            url: '../mine/mine'
        })
    },
    onLoad: function () {
        if (app.globalData.userInfo) {
            this.setData({
                userInfo: app.globalData.userInfo,
                hasUserInfo: true
            })
        } else if (this.data.canIUse) {
            // 由于 getUserInfo 是网络请求，可能会在 Page.onLoad 之后才返回
            // 所以此处加入 callback 以防止这种情况
            app.userInfoReadyCallback = res => {
                this.setData({
                    userInfo: res.userInfo,
                    hasUserInfo: true
                })
            }
        } else {
            // 在没有 open-type=getUserInfo 版本的兼容处理
            qq.getUserInfo({
                success: res => {
                    app.globalData.userInfo = res.userInfo;
                    this.setData({
                        userInfo: res.userInfo,
                        hasUserInfo: true
                    })
                }
            })
        }
    },
    getUserInfo: function (e) {
        console.log(e);
        app.globalData.userInfo = e.detail.userInfo;
        this.setData({
            userInfo: e.detail.userInfo,
            hasUserInfo: true
        })
    }
});

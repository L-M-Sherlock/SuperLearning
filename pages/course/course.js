const app = getApp();

Page({
    data: {
        courseTitle: "政治易混易错点",
        isDue: [20, 5, 15],
        isDueColor:[
            "#3498DB",
            "#C0392B",
            "#27AE60"
        ],
        expectedTime: 15,
        totalCard: 100,
        newCard: 80,
        readme: "本课程分为 6 小节，共 236 张卡片，每小节结束将更新当节的卡片，点击同步更新，这些卡片就会加入新卡片中。",
        updateLogs: [
            {
                date: '2019/09/01',
                content: '第三节课结束，添加 50 张卡片'
            },
            {
                date: '2019/08/27',
                content: '第二节课结束，添加 50 张卡片'
            },
            {
                date: '2019/08/25',
                content: '第一节课结束，添加 50 张卡片'
            }
        ]
    },
    goToCard: function () {
        qq.navigateTo({
            url: '../card/card'
        })
    },
});
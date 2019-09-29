const app = getApp();

Page({
    data: {
        courseTitle: "政治易混易错点",
        isDue: [20,5,15],
        expectedTime: 15,
        haveGrade: false,
        deck:[
            {
                cardFront: "中华文化的力量集中表现为[...]的力量。",
                cardBack: "中华文化的力量集中表现为<u>民族精神</u>的力量。"
            },
            {
                cardFront: "111",
                cardBack: "222"
            }
        ],
        time: 5,
        tools:[
            "undo",
            "mark",
            "suspend"
        ],
        confidenceGrade: {
            low: "低",
            medium: "中",
            high: "高"
        },
        memoryGrade: {
            wrong: "错了",
            right: "对了"
        },
        isDueColor:[
            "#3498DB",
            "#C0392B",
            "#27AE60"
        ]
    },
    gradeConfidence: function () {
        this.setData({
            haveGrade: true
        })
    },
    gradeMemory: function () {
        this.setData({
            haveGrade: false
        })
    }
});
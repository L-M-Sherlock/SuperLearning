const app = getApp();

Page({
    data: {
        courseTitle: "政治易混易错点",
        isDue: [20,5,15],
        expectedTime: 15,
        haveGrade: false,
        deck:[
            {
                cardFront: "<b>加粗</b><br><i>斜体</i>",
                cardBack: "\n" +
                    "<style>\n" +
                    "                span.star {color: #FFBB00;}\n" +
                    "                span.cet  {margin: 0 3px;padding: 0 3px;font-weight: normal;font-size: 0.8em;color: white;background-color: #5cb85c;border-radius: 3px;}\n" +
                    "                span.pos  {text-transform:lowercase; font-size:0.9em; margin-right:5px; padding:2px 4px; color:white; background-color:#0d47a1; border-radius:3px;}\n" +
                    "                span.tran {margin:0; padding:0;}\n" +
                    "                span.eng_tran {margin-right:3px; padding:0;}\n" +
                    "                span.chn_tran {color:#0d47a1;}\n" +
                    "                ul.sents {font-size:0.8em; list-style:square inside; margin:3px 0;padding:5px;background:rgba(13,71,161,0.1); border-radius:5px;}\n" +
                    "                li.sent  {margin:0; padding:0;}\n" +
                    "                span.eng_sent {margin-right:5px;}\n" +
                    "                span.chn_sent {color:#0d47a1;}\n" +
                    "            </style><span class=\"pos\">N-COUNT</span><span class=\"tran\"><span class=\"eng_tran\">When someone makes a <b>pledge</b>, they make a serious promise that they will do something.&nbsp; </span><span class=\"chn_tran\">保证；诺言；誓言</span></span><ul class=\"sents\"><li class=\"sent\"><span class=\"eng_sent\">The meeting ended with a <b>pledge</b> to step up cooperation between the six states of the region.</span><span class=\"chn_sent\">会议以承诺加快这一地区六国间的合作而结束。</span></li><li class=\"sent\"><span class=\"eng_sent\">...a £1.1m <b>pledge</b> of support from the Spanish ministry of culture.</span><span class=\"chn_sent\">来自西班牙文化部110万英镑的资助许诺</span></li></ul>"
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
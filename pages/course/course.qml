<view class="container">

    <view class='course-table'>
        <text style='font-size: 16px'>{{courseTitle}}</text>
        <view class='course-detail'>
        <view style='width: 50%'> 
            <text>新卡片：{{newCard}}</text>
        </view>       
        <text>全部卡片：{{totalCard}}</text>
        </view>
    </view>

    <view class='course-readme'>
        <text style='margin-bottom: 10px'>课程须知</text>
        <text>{{readme}}</text>
    </view>

    <view class='update-log'>
        <text style='margin: 0 auto 10px auto'>更新日志</text>
        <view wx:for='{{updateLogs}}'>
            <text>{{item.date}}：{{item.content}}</text>
        </view>
    </view>

    <view style='width: 85%; margin-bottom: 10px'>
        <view class='course-detail'>
            <view style='width: 50%'> 
                <text>待复习：</text>
                <text style='color: #2a82e4' decode='true'>{{isDue[0]}}&nbsp;</text>
                <text style='color: #d43030' decode='true'>{{isDue[1]}}&nbsp;</text>
                <text style='color: #43cf7c' decode='true'>{{isDue[2]}}&nbsp;</text>
                </view>       
                <text>预计时间：{{expectedTime}} min</text>
        </view>
    </view>

    <button style='font-size: 14px;width: 96%;box-shadow: 0px 0px 5px 0px gray'>
        开始复习
    </button>

</view>
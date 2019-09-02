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
        <text style='margin-bottom: 20rpx'>课程须知</text>
        <text>{{readme}}</text>
    </view>

    <view class='update-log'>
        <text style='margin: 20rpx auto 20rpx auto'>更新日志</text>
        <view wx:for='{{updateLogs}}' wx:key="index">
            <text>{{item.date}}：{{item.content}}</text>
        </view>
    </view>

    <view style='width: 85%; margin-bottom: 20rpx'>
        <view class='course-detail'>
            <view style='width: 50%'> 
                <text>待复习：</text>
                    <text wx:for="{{isDue}}" wx:key="index" style="color: {{isDueColor[index]}}" decode='true'>{{isDue[index]}}&nbsp;</text>
                </view>       
                <text>预计时间：{{expectedTime}} min</text>
        </view>
    </view>

    <button class="review-button" bindtap="goToCard">
        开始复习
    </button>

</view>
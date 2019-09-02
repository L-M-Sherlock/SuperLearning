<view class="container">

    <view class="userinfo">
        <button style='width: 100%' wx:if="{{!hasUserInfo && canIUse}}" open-type="getUserInfo" bindgetuserinfo="getUserInfo"> 登录 </button>
        <view class="user-table" wx:else bindtap="goToMine">
            <image class="userinfo-avatar" src="{{userInfo.avatarUrl}}" mode="cover"></image>
            <text style="font-size: 36rpx">{{userInfo.nickName}}</text>
            <text class='mine-text' decode='true'>
                我的 >>&nbsp;&nbsp;
            </text>
        </view>
    </view>

    <view class='course'>
        <text class='add-text'>我的课程</text>
        <button
                class='add-button'
                bindtap="goToToken">
            加入课程
        </button>
    </view>

    <view class='my-courses'>
        <text wx:if="{{courses.length==0}}">这儿什么也没有，快去加入课程吧！</text>
        <view wx:for='{{courses}}' wx:key="index" style='width: 100%'>
            <view class='course-table' bindtap='goToCourse'>
                <text style='font-size: 32rpx'>{{item.courseTitle}}</text>
                <view class='course-detail'>
                    <view style='width: 50%'>
                        <text>待复习：</text>
                        <text wx:for="{{item.isDue}}" wx:key="index" style="color: {{isDueColor[index]}}" decode='true'>{{item}}&nbsp;</text>
                    </view>
                    <text>预计时间：{{item.expectedTime}} min</text>
                </view>
            </view>
        </view>
    </view>
</view>

<view class='start-review'>
    <text style='font-size: 28rpx;color: gray;margin: 0 auto 16rpx auto'>{{sumIsDue}}张卡片待复习({{sumExpectedTime}}分钟)</text>
    <button class="review-button" bindtap="goToCard">
        一键复习
    </button>
</view>

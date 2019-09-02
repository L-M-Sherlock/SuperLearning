<view class="container">
    <view class="top">
        <view class="top-table">
            <view class="top-detail">
                <text class="top-title">
                    {{courseTitle}}
                </text>
                <text class="top-expected-time">
                    剩余{{expectedTime}}分钟
                </text>
            </view>
            <view class="top-tools">
                <image wx:for="{{tools}}" wx:key="index" class="tools-img" src="../../images/{{item}}.svg"></image>
            </view>
        </view>
        <view class="is-due">
            <text wx:for="{{isDue}}" wx:key="index" style="color: {{isDueColor[index]}}" decode='true'>{{isDue[index]}}&nbsp;</text>
        </view>
    </view>

    <view class="body">
        <view class="body-card">
            <view style="width: 620rpx">
                <rich-text nodes="{{deck[0].cardFront}}"></rich-text>
            </view>
        </view>
        <view wx:if="{{haveGrade}}" class="body-card">
            <view style="width: 620rpx">
                <rich-text nodes="{{deck[0].cardBack}}"></rich-text>
            </view>
        </view>
    </view>

    <block>
        <view wx:if="{{!haveGrade}}" class="bottom-grade">
            <view class="bottom-title">
                <view class="bottom-line"></view>
                <text style="text-align: center;width: 160rpx;font-size: 28rpx;line-height: 10rpx">把握程度</text>
                <view class="bottom-line"></view>
            </view>
            <view class="bottom-button">
                <button wx:for="{{confidenceGrade}}" wx:key="index" class="{{index}}-grade" bindtap="gradeConfidence">
                    {{item}}
                </button>
            </view>
        </view>
        <view wx:else class="bottom-grade">
            <view class="bottom-title">
                <view class="bottom-line"></view>
                <text style="text-align: center;width: 160rpx;font-size: 28rpx;line-height: 10rpx">答对了吗</text>
                <view class="bottom-line"></view>
            </view>
            <view class="bottom-button">
                <button wx:for="{{memoryGrade}}" wx:key="index" class="{{index}}-grade" bindtap="gradeMemory">
                    <view class="grade-title">
                        <image class="tools-img" src="../../images/{{index}}.svg"></image>
                        <text style="font-size: 32rpx">{{item}}</text>
                    </view>
                    <text style="font-size: 24rpx">{{time}}后复习</text>
                </button>
            </view>
        </view>
    </block>
</view>
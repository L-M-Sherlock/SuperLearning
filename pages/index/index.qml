<view class="container">

  <view class="userinfo">
    <button style='width: 100%' wx:if="{{!hasUserInfo && canIUse}}" open-type="getUserInfo" bindgetuserinfo="getUserInfo"> 登录 </button>
    <block wx:else>
    <image bindtap="bindViewTap" class="userinfo-avatar" src="{{userInfo.avatarUrl}}" mode="cover"></image>
    <text style="font-size: 18px">{{userInfo.nickName}}</text>
    <text class='mine-text' decode='true'> 
      我的 >>&nbsp;&nbsp;
    </text>
    </block>
  </view>

  <view class='course'>
    <text class='add-text'>我的课程</text>
    <view style='width: 30%;'>
      <button 
        class='add-button' 
        size='mini'>
        加入课程
      </button>
    </view>  
  </view>

  <view class='my-courses'>
    <text wx:if="{{courses.length==0}}">这儿什么也没有，快去加入课程吧！</text>
    <view style='width: 100%' wx:for='{{courses}}'>
    <view class='course-table' bindtap='goToCourse'>
      <text style='font-size: 16px'>{{item.courseTitle}}</text>
      <view class='course-detail'>
        <view style='width: 50%'> 
          <text>待复习：</text>
          <text style='color: #2a82e4' decode='true'>{{item.isDue[0]}}&nbsp;</text>
          <text style='color: #d43030' decode='true'>{{item.isDue[1]}}&nbsp;</text>
          <text style='color: #43cf7c' decode='true'>{{item.isDue[2]}}&nbsp;</text>
        </view>       
        <text>预计时间：{{item.expectedTime}} min</text>
      </view>
    </view>
    </view>
  </view> 
</view>

<view class='start-review'>
  <text style='font-size: 14px;color: gray;margin: 0 auto 8px auto'>{{sumIsDue}}张卡片待复习({{sumExpectedTime}}分钟)</text>
  <button style='width: 100%' type='primary'>
      一键复习
  </button>
</view>

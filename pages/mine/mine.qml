<view class='body'>
    <view class='head_image'>
        <image class='top_image' src="../../images/timg.jpg"></image>
        <image
                class='head_portrait'
                src="{{userInfo.avatarUrl}}" ></image>
        <view class='ID'>
            <text class="login">{{userInfo.nickName}}</text>
        </view>
    </view>
</view>
<view class='footer'>

</view>
<!--
  <view class='footer'>
    <button
      open-type="getUserInfo"
      bindgetuserinfo="onGetUserInfo"
    >点击登陆</button>
    <button
      bindtap="onGetOpenid"
    >点击获取openid</button>
    <button bindtap='onTest'>测试</button>
  </view>

-->
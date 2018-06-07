<template lang="pug">
  .container 个人中心
    button( v-if="!userInfo" open-type="getUserInfo" lang="zh_CN" @getuserinfo="doLogin") 获取用户信息
    .userInfo
      img(:src="userInfo.avatarUrl")
      p {{userInfo.nickName}}
    YearProgress
    button(class="btn" @click="scanBook") 添加图书
</template>

<script>
import qcloud from 'wafer2-client-sdk'
import config from '@/config.js'
import { showSuccess } from '@/utils.js'

export default {
  data() {
    return {
      userInfo: {}
    }
  },
  created() {
    this.userInfo = wx.getStorageSync('userInfo')
  },
  methods: {
    doLogin: function(e) {
      if (!this.userInfo) {
        qcloud.setLoginUrl(config.loginUrl)
        qcloud.login({
          success(userInfo) {
            console.log('登录成功', userInfo)
            showSuccess('登录成功')
            // 存在浏览器中
            wx.setStorageSync('userInfo', userInfo)
            this.userInfo = userInfo
          },
          fail: function(err) {
            console.log('登录失败', err)
          }
        })
      }
    },
    scanBook() {
      // 允许从相机和相册扫码
      wx.scanCode({
        success: res => {
          console.log(res)
        }
      })
    }
  }
}
</script>
<style lang="sass" scoped>
.container
  padding: 0 30px
.userInfo
  margin-top: 100rpx
  text-align: center
img
  width: 150rpx
  height: 150rpx
  margin: 20rpx
  border-radius: 50%
</style>


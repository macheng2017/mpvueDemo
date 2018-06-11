<template lang="pug">
  .container 个人中心
    button(v-if="!userInfo.openId" open-type="getUserInfo" lang="zh_CN" @getuserinfo="doLogin") 点击登录
    div(v-if="userInfo.openId")
      .userInfo
        img(:src="userInfo.avatarUrl")
        p {{userInfo.nickName}}
      YearProgress
      button(class="btn" @click="scanBook") 添加图书
</template>

<script>
import qcloud from 'wafer2-client-sdk'
import config from '@/config.js'
import { showSuccess, post, showModal } from '@/utils.js'
import YearProgress from '@/components/YearProgress'

export default {
  data() {
    return {
      userInfo: {
        avatarUrl: '../../../static/img/unlogin.png',
        nickName: '点击登录'
      }
    }
  },
  onShow() {
    const userInfo = wx.getStorageSync('userInfo')
    if (userInfo.openId) {
      this.userInfo = userInfo
    }
  },
  methods: {
    doLogin: function(e) {
      if (!this.userInfo.openId) {
        qcloud.setLoginUrl(config.loginUrl)
        qcloud.login({
          // 解决不能成功刷新登录后的信息问题:
          // 1. 使用=>函数
          // 2. 使用 const self = this  this.userInfo = userInfo
          success: userInfo => {
            console.log('登录成功', userInfo)
            showSuccess('登录成功')
            // 存在浏览器中
            wx.setStorageSync('userInfo', userInfo)
            this.userInfo = userInfo
            // 为了解决上个sdk中返回值没有带openId 当然现在'wafer2-client-sdk'已经解决了这个问题
            // 利用openId来判断是否放权
            // 自己调用server目录下的
            // qcloud.request({
            //   url: config.userUrl,
            //   login: true,
            //   success: userReq => {
            //     wx.setStorageSync('userInfo', userReq.data.data)
            //     this.userInfo = userReq.data.data
            //   }
            // })
          },
          fail: function(err) {
            console.log('登录失败', err)
          }
        })
      }
    },
    async addBook(isbn) {
      // 把发起请求的方法放到utils中, 项目中应该放入到controler层当中,或者放入到vuex的action中
      const res = await post('/weapp/addbook', {
        isbn,
        openid: this.userInfo.openId
      })
      console.log(res)
      showModal('添加成功', `${res.title} 添加成功`)
      // if (res.code === 0 && res.data.title) {
      //   showSuccess('添加成功', `${res.data.title} 添加成功`)
      // }
    },
    scanBook() {
      // 允许从相机和相册扫码
      wx.scanCode({
        success: res => {
          if (res.result) {
            this.addBook(res.result)
            console.log(res)
          }
        },
        fail: res => {
          // console.log(res)
          showModal('添加失败', `扫码失败,请重试`)
        }
      })
    }
  },
  components: {
    YearProgress
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


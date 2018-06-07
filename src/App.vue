
<script>
import { get, showSuccess } from './utils'
import qcloud from 'wafer2-client-sdk'
import config from './config'
export default {
  async created() {
    const res = await get('/weapp/test')
    // wx.request({
    //   url: config.host + '/weapp/test', // 仅为示例，并非真实的接口地址
    //   data: {
    //     // x: '',
    //     // y: ''
    //   },
    //   success: function (res) {
    //     console.log(res.data)
    //   }
    // })
    // https://github.com/tencentyun/wafer2-client-sdk

    // 设置登录地址
    const userInfo = wx.getStorageSync('userInfo')
    if (!userInfo) {
      qcloud.setLoginUrl(config.loginUrl)
      qcloud.login({
        success: function(userInfo) {
          console.log('登录成功', userInfo)
          showSuccess('登录成功')
          // 存在浏览器中
          wx.setStorageSync('userInfo', userInfo)
        },
        fail: function(err) {
          console.log('登录失败11', err)
        }
      })
      console.log(res)
    }
  }
}
</script>

<style>
</style>

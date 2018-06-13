
<script>
// import { get, showSuccess } from './utils'
// import qcloud from 'wafer2-client-sdk'
// import config from './config'
export default {
  async created() {
    // const res = await get('/weapp/test')
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
    // let user = wx.getStorageSync('userInfo')
    // if (!user) {
    //   qcloud.setLoginUrl(config.loginUrl)
    //   qcloud.login({
    //     success: function(userInfo) {
    //       console.log('登录成功', userInfo)
    //       showSuccess('登录成功')
    //       // 存在浏览器中
    //       wx.setStorageSync('userInfo', userInfo)
    //     },
    //     fail: function(err) {
    //       console.log('登录失败11', err)
    //     }
    //   })
    //   console.log(res)
    // }
  }
}
</script>
<style lang="sass">
@import ../static/sass/color
.btn
  color: white
  background: $red
  margin-bottom: 10px
  padding-left: 15px
  padding-left: 15px
  border-radius: 2px
  font-size: 16px
  line-height: 40px
  height: 40px
  width: 100%
.btn:active
  background: $red
.text-footer
  text-align: center
  font-size: 12px
  margin-bottom: 5px

</style>


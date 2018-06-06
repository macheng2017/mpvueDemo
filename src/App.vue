
<script>
import config from './config'
export default {
  created () {
    wx.request({
      url: config.host + '/weapp/test', // 仅为示例，并非真实的接口地址
      data: {
        // x: '',
        // y: ''
      },
      success: function (res) {
        console.log(res.data)
      }
    })
  }
}
</script>

<style>
</style>

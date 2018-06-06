
<script>
import * as utils from './utils'
export default {
  async created () {
    const res = await utils.get('/weapp/test')
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
    console.log(res)
  }
}
</script>

<style>
</style>

<template lang="pug">
.container
  BookInfo(:info="info")
  .comment
    textarea(v-model="comment" class="textarea" :maxlength="100" placeholder='请输入内容...')
    .location 地理位置:
      switch(color="#EA5A49" @change="getGeo" :checked='location')
      span {{location}}
    .phone 手机型号:
      switch(color="#EA5A49" @change="getPhone" :checked='phone')
      span {{phone}}

</template>


<script>
import { get } from '@/utils'
import BookInfo from '@/components/bookInfo'
export default {
  components: {
    BookInfo
  },
  // Q&A - mpvue-docs  http://mpvue.com/qa/
  data() {
    return {
      bookid: '',
      info: {},
      comments: '',
      location: '',
      phone: ''
    }
  },
  methods: {
    async getDetail() {
      const info = await get('/weapp/bookdeatil', { id: this.bookid })
      // 设置页面标题
      wx.setNavigationBarTitle({
        title: info.title
      })
      this.info = info
    },
    getGeo(e) {
      let url = 'http://api.map.baidu.com/geocoder/v2/'
      if (e.target.value) {
        wx.getLocation({
          // FgAwGxsSSYuD96qXuHXfpqk7dGnwVMab 百度地图token
          // http://api.map.baidu.com/geocoder/v2/?callback=renderReverse&location=35.658651,139.745415&output=json&pois=1&ak=您的ak //GET请求
          success: geo => {
            wx.request({
              url,
              data: {
                location: `${geo.latitude}, ${geo.longitude}`,
                output: 'json',
                ak: 'FgAwGxsSSYuD96qXuHXfpqk7dGnwVMab'
              },
              success: res => {
                console.log(res)
                if (res.data.status === 0) {
                  this.location = res.data.result.addressComponent.city
                } else {
                }
              }
            })
          }
        })
      } else {
        this.location = ''
      }
    },
    // mpvue 对获取信息的属性有有修改 e.detail.value => e.target.value
    getPhone(e) {
      if (e.target.value) {
        const phoneInfo = wx.getSystemInfoSync()
        this.phone = phoneInfo.model
      } else {
        this.phone = ''
      }
    }
  },
  mounted() {
    this.bookid = this.$root.$mp.query.id
    this.getDetail()
  }
}
</script>

<style lang="sass" scoped>
.comment
  margin-top: 10px
  .textarea
    width: 730rpx
    height: 200rpx
    background: #eee
    padding: 10rpx
  .location,.phone
    margin-top: 10px
    padding: 5px 10px





</style>

<template lang="pug">
.container
  BookInfo(:info="info")
  CommentList(:comments="comments")
  .comment(v-if="showAdd")
    textarea( v-model="comment" class="textarea" :maxlength="100" placeholder='请输入内容...')
    .location 地理位置:
      switch(color="#EA5A49" @change="getGeo" :checked='location')
      span {{location}}
    .phone 手机型号:
      switch(color="#EA5A49" @change="getPhone" :checked='phone')
      span {{phone}}
    button(class="btn" @click="addComments") 评论
  .text-footer(v-else) 未登录或者已经评论过了
  button(open-type="share" class='btn') 转发给好友

</template>


<script>
import { get, post, showModal } from '@/utils'
import BookInfo from '@/components/bookInfo'
import CommentList from '@/components/commentList'
export default {
  components: {
    BookInfo,
    CommentList
  },
  // Q&A - mpvue-docs  http://mpvue.com/qa/
  data() {
    return {
      bookid: '',
      info: {},
      comment: '',
      comments: [],
      location: '',
      phone: '',
      userInfo: {}
    }
  },
  computed: {
    showAdd() {
      // 没登录
      if (!this.userInfo) {
        return false
      }
      // 在评论也查到有自己的openid
      if (this.comments.filter(v => v.openid === this.userInfo.openId).length) {
        return false
      }
      return true
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
                // console.log(res)
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
    },
    //  comment method
    async addComments() {
      // 评论内容, 手机型号, 地理位置, 图书id 用户openid
      if (!this.comment) {
        return
      }
      const data = {
        openId: this.userInfo.openId,
        bookid: this.bookid,
        comment: this.comment,
        phone: this.phone,
        location: this.location
      }
      // console.log(data)
      try {
        const res = await post('/weapp/addcomments', data)
        this.comment = ''
        // console.log(res)
        if (res.msg === 'success') {
          this.getComments()
          showModal('评论', '成功')
        }
      } catch (e) {
        showModal('添加评论失败', e.msg)
      }
    },
    // 获取评论列表
    async getComments() {
      const comments = await post('/weapp/commentList', { bookid: this.bookid })
      this.comments = comments.list || []
    }
  },
  mounted() {
    // mpvue 从query中获取数据的推荐写法
    this.bookid = this.$root.$mp.query.id
    this.getDetail()
    this.getComments()
    const userInfo = wx.getStorageSync('userInfo')
    if (userInfo) {
      this.userInfo = userInfo
    }
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

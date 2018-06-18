<template lang="pug">
.container
  // 增加点击事件的标识 type="user"
  CommentList(:comments="comments" type="user")


</template>
<script>
import { post } from '@/utils'
import CommentList from '@/components/commentList'
export default {
  data() {
    return {
      comments: [],
      userInfo: {}
    }
  },
  components: {
    CommentList
  },
  methods: {
    async getComments() {
      const comments = await post('/weapp/commentList', {
        openId: this.userInfo.openId
      })
      this.comments = comments.list
    },
    init() {
      wx.showNavigationBarLoading()
      this.getComments()
    }
  },
  onShow() {
    if (!this.userInfo.opneId) {
      let userInfo = wx.getStorageSync('userInfo')
      if (userInfo) {
        this.userInfo = userInfo
        this.init()
      }
    }
  }
}
</script>
<style>
</style>

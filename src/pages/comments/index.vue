<template lang="pug">
.container
  // 增加点击事件的标识 type="user"
  div(v-if="userInfo.openId")
    CommentList(v-if="userInfo.openId" :comments="comments" type="user")
    .page-title 我的图书
    Card(v-for="book in books" :key="book.id" :book='book')
    div(v-if="!books.length") 暂时没有添加过书,块去添加几本吧!
</template>
<script>
import { get, post } from '@/utils'
import CommentList from '@/components/commentList'
import Card from '@/components/card'
export default {
  data() {
    return {
      comments: [],
      userInfo: {},
      books: []
    }
  },
  components: {
    CommentList,
    Card
  },
  methods: {
    async getComments() {
      const comments = await post('/weapp/commentList', {
        openId: this.userInfo.openId
      })
      this.comments = comments.list
    },
    async getBooks() {
      const books = await get('/weapp/bookList', {
        openId: this.userInfo.openId
      })
      this.books = books.list
    },

    init() {
      wx.showNavigationBarLoading()
      this.getComments()
      this.getBooks()
      wx.hideNavigationBarLoading()
    }
  },
  onPullDownRefresh() {
    this.init()
    wx.stopPullDownRefresh()
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

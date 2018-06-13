<template lang="pug">
.container
  Card(v-for="book in books" :key="book.id" :book="book")
  .text-footer(v-if="!more") 没有了...

</template>
<script>
// 35条数据
// 每次加载10条
//  page 当前页
// 显示没有更多数据
// 1. page =0 不能显示这条提醒
// 2. page>0 数据长度<10 停止触底加载
import { get } from '@/utils'
import Card from '@/components/card'
export default {
  data() {
    return {
      books: [],
      page: 0,
      more: true,
      top: []
    }
  },
  methods: {
    async getList(init) {
      // 判断是否是下拉刷新
      if (init) {
        this.page = 0
        this.more = true
      }
      wx.showNavigationBarLoading()
      const books = await get('/weapp/bookList', { page: this.page })
      this.books = books.list
      // 显示 more...
      if (books.list.length < 10 && this.page > 0) {
        this.more = false
      }
      if (init) {
        this.books = books.list
        wx.stopPullDownRefresh()
      } else {
        // 下拉刷新,不能直接覆盖books 而是累加
        this.books = this.books.concat(books.list)
      }
      // wx.stopPullDownRefresh()
      wx.hideNavigationBarLoading()
    },
    async getTop() {
      const top = await get('/weapp/top')
      this.tops = top.list
    }
  },
  onPullDownRefresh() {
    this.getList(true)
    // console.log('下拉')
    this.getTop()
  },
  onReachBottom() {
    if (!this.more) {
      return false
    }
    this.page = this.page + 1
    this.getList()
  },
  mounted() {
    this.getList(true)
    this.getTop()
  },
  components: {
    Card
  }
}
</script>
<style>
</style>

<template lang="pug">
.container
  Card(v-for="book in books" :key="book.id" :book="book")

</template>
<script>
import { get } from '@/utils'
import Card from '@/components/card'
export default {
  data() {
    return {
      books: []
    }
  },
  methods: {
    async getList() {
      const book = await get('/weapp/bookList')
      this.books = book.list
    }
  },
  onPullDownRefresh() {
    wx.showNavigationBarLoading()
    this.getList()
    wx.stopPullDownRefresh()
    wx.hideNavigationBarLoading()
    // console.log('下拉')
  },
  mounted() {
    this.getList()
  },
  components: {
    Card
  }
}
</script>
<style>
</style>

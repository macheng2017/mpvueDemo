<template lang="pug">
.container {{bookid}}
  BookInfo(:info="info")
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
      info: {}
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
    }
  },
  mounted() {
    this.bookid = this.$root.$mp.query.id
    this.getDetail()
  }
}
</script>

<style lang="sass" scoped>

</style>

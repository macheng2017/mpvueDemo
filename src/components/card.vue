<template lang="pug">
.book-card
  a(:href="detailUrl")
    .thumb
      // 预览图片,不想上点击事件影响到其他标签添加.stop后缀
      img(:src="book.image" class='img' mode="aspectFit" @click.stop="preview")
    .detail
      .row
        .left {{book.title}}
        .right {{book.rate}}
          Rate(:value="book.rate" )
      .row
        .left {{book.author}}
        .right 浏览量: {{book.count}}
      .row
        .left {{book.publisher}}
        .right {{book.user_info.nickName}}

</template>
<script>
import { get } from '@/utils'
import Rate from '@/components/rate'
export default {
  components: {
    Rate
  },
  props: ['book'],
  computed: {
    detailUrl() {
      return `/pages/detail/main?id=${this.book.id}`
    }
  },
  methods: {
    async getList() {
      const book = await get('/weapp/bookList')
      this.book = book.list
    },
    // 预览大图
    preview() {
      wx.previewImage({
        current: this.book.image,
        urls: [this.book.image]
      })
    }
  }
}
</script>
<style lang="sass" scoped>
  .book-card
    padding: 5px
    overflow: hidden
    margin-top: 5px
    margin-bottom: 5px
    font-size: 14px
    .thumb
      width: 90px
      height: 90px
      float: left
      margin: 0 auto
      overflow: hidden
      .img
        max-width: 100%
        max-height: 100%
    .detail
      margin-left: 100px
      .row
        line-height: 20px
        margin-bottom: 3px
      .right
        float: right
      .left
        float: left
        margin-right: 90px



</style>

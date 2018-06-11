<template lang="pug">
.book-card
  .thumb
    img(:src="book.image" class='img' mode="aspectFit")
  .detail
    .row
      .right {{book.rate}}
      .left {{book.title}}

</template>
<script>
import { get } from '@/utils'
export default {
  props: ['book'],
  methods: {
    async getList() {
      const book = await get('/weapp/bookList')
      this.books = book.list
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
    .thumb
      width: 90px
      height: 90px
      float: left
      margin: 0 auto
      overflow: hidden
      .img
        max-width: 100%
        max-height: 100%


</style>

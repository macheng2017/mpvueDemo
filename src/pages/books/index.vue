<template lang="pug">
.container
  div(v-for="item in books" :key="item.id")
    div {{item.title}}

</template>
<script>
import { get } from '@/utils'
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
  mounted() {
    this.getList()
  }
}
</script>
<style>
</style>

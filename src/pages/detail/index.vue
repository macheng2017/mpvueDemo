<template lang="pug">
.container {{bookid}}
</template>


<script>
import {get} from '@/utils'
export default {
  // Q&A - mpvue-docs  http://mpvue.com/qa/
  data() {
    return {
      bookid: ''
    }
  },
  methods: {
    async getDetail() {
      // const info =
      await get('/weapp/bookdeatil', { id: this.bookid })
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

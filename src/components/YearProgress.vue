<template lang="pug">
  .progressbar
    progress(:percent="precent"  activeColor="#EA5A49" )
    p {{year}}已经过去了{{days}}天, {{precent}}%
</template>
<script>
export default {
  data() {
    return {}
  },
  methods: {
    // 判断是否是闰年
    isLeapYear() {
      const year = new Date().getFullYear()
      if (year % 400 === 0) {
        return true
      } else if (year % 4 === 0 && year % 100 !== 0) {
        return true
      } else {
        return false
      }
    },
    getDayOfYear() {
      return this.isLeapYear() ? 366 : 365
    }
  },
  computed: {
    year() {
      return new Date().getFullYear()
    },
    days() {
      let start = new Date()
      start.setMonth(0)
      start.setDate(1)
      // 将其初始化为今年1月1日
      let offset = new Date().getTime() - start.getTime()
      return parseInt(offset / 1000 / 60 / 60 / 24)
    },
    precent() {
      return (this.days / this.getDayOfYear() * 100).toFixed(1)
    }
  }
}
</script>
<style lang="sass" scoped>
.progressbar
  text-align: center
  margin-bottom: 30px
  width: 100%
  progress
    margin-bottom: 10px
</style>

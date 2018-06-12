<template lang="pug">
.rate
  span ☆☆☆☆☆
  .hollow(:style="style") ★★★★★
</template>
<script>
export default {
  props: {
    value: { type: [Number, String], default: '0' }
  },
  computed: {
    style() {
      // 在标签上重写样式,标签上优先级更高
      return `width: ${this.value / 2}em`
    }
  }
}
</script>
<style lang="sass" scoped>
.rate
  position: relative
  display: inline-block
  color: #EA5149
  .hollow
    position: absolute
    display: inline-block
    top: 0
    left: 0
    width: 0
    overflow: hidden
</style>

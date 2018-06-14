<template lang="pug">
.bookInfo
  .thumb
    img( class="back" :src="info.image" mode="aspectFill")
    img( class="img" :src="info.image" mode="aspectFit")
  .info
    .title {{info.title}}
    .author {{info.author}}
</template>
<script>
export default {
  props: ['info'],
  mounted() {
    console.log(this.info)
  }
}
</script>
<style lang="sass" scoped>
.bookInfo
  .thumb
    width: 750rpx
    height: 500rpx
    overflow: hidden
    position: relative
    .back
      filter: blur(15px)
      width: 100%
    .img
      position: absolute
      width: 100%
      heigth: 300rpx
      top: 30rpx
      left: 0
  .info
    color: white
    position: absolute
    width: 100%
    left: 0
    top: 330rpx
    text-align: center
    .title
      font-size: 20px
    .author
      font-size: 14px




</style>

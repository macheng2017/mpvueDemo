<template lang="pug">
.bookInfo
  .thumb
    img( class="back" :src="info.image" mode="aspectFill")
    img( class="img" :src="info.image" mode="aspectFit")
  .info
    .title {{info.title}}
    .author {{info.author}}
  .detail {{userInfo.name}}
    img(class='avatar' :src="userInfo.image" mode="aspectFit")
    Rate(:value="info.rate")
  .right {{info.rate}} 分
  .detail {{info.publisher}}
  .right {{info.price}}
</template>
<script>
import Rate from '@/components/rate'
export default {
  components: {
    Rate
  },
  props: ['info'],
  computed: {
    userInfo() {
      return this.info.user_info || {}
    }
  }
}
</script>
<style lang="sass" scoped>
.bookInfo
  font-size: 14px
  .right
    float: right
  .detail
    padding: 5px 10px
    .avatar
      width: 20px
      height: 20px
      border-radius: 50%
      vertical-align: middle

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
      height: 300rpx
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

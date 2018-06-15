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
  .tags
    .badge(v-for="tag in info.tags" :key="tag") {{ tag }}
  .summary
    p(v-for="(sum,i) in info.summary" :key="i") {{ sum }}
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
  .tags
    .badge
      display: inline-block
      margin: 5px
      padding: 5px
      border-radius: 10px
      border: 1px #EA5A49 solid
      color: #EA5A49
  .summary
    padding: 0 15px
    margin-top: 10px
    p
      text-indent: 2em


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

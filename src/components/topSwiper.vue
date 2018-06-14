<template lang="pug">
.swiper
  swiper(:indicator-dots="true" indicator-color="#EA5A49" :autoplay="true" :interval='6000' :duration='1000' :circular='true')
    div(v-for='(top, imgIndex) in imgUrls' :key="imgIndex")
      swiper-item
        img(@click="bookDetail(img)" v-for="(img, index) in top" :key="index" mode="aspectFit" :src="img.image")
</template>
<script>
import _ from 'lodash'
export default {
  props: ['tops'],
  // 把数组打散,由于图片太小了,将数组变成每3个一组 这叫做chunk
  // 可以使用chunk包
  computed: {
    imgUrls() {
      // 如果通用,可以使用chunk函数,比如lodash的chunk方法
      // 下面直接切,将一维数组,切成二维数组,让其分组显示
      let res = this.tops
      // return [res.slice(0, 3), res.slice(3, 6), res.slice(6)]
      return _.chunk(res, 3)
    }
  },
  methods: {
    bookDetail(item) {
      // https://developers.weixin.qq.com/miniprogram/dev/api/ui-navigate.html
      wx.navigateTo({
        url: `../detail/main?id=${item.id}`
      })
    }
  }
}
</script>
<style lang="sass" scoped>
.swiper
  margin-top: 5px
  img
    width: 33%
    height: 250rpx
</style>

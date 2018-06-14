<template lang="pug">
.container
  img(:src="info.image")
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

</style>

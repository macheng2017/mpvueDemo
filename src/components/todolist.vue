<template>
    <div>
    <p>{{ title }}123</p>
    <input type="text" v-model="myVal"/>
    <button @click="getVal()"  >add</button>
    <ul>
      <li v-for='(item, index) in todo' :key="index">{{item}}</li>
    </ul>
  </div>
</template>

<script>
export default {
  data () {
    return {
      title: 'hello world!!',
      todo: ['写作', '用英语', '看书'],
      myVal: ''
    }
  },
  methods: {
    getVal () {
      this.todo.push(this.myVal)
      this.myVal = ''
    }
  }
}
</script>


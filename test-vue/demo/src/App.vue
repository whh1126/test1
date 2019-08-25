<template>
  <div id="app">
    {{a}}
    {{arr}}
  有趣的灵魂  {{changeArr}}
    <!-- {{this.$store.state.a}} -->

    <!-- <router-view/> -->
  </div>
</template>

<script>
import {mapState,mapGetters,mutations} from "vuex"
export default {
  name: 'App',
  computed: {
    ...mapState(['a','arr']),
    ...mapGetters(['changeArr'])
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>

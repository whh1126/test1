<template>
  <div>
    <div>内容</div>
    <!-- <div v-for="(item,index)in list" :key="index">{{item.lable}}</div> -->
    <div>
      <slot></slot>
    </div>
  </div>
</template>
<script>
export default {
  props: {},
  components: {},
  data() {
    return {
      list: []
    };
  },
  computed: {},
  methods: {},
  created() {},
  mounted() {
    console.log(this.$children);
    this.$children.forEach((item, index) => {
      this.list.push({
        lable: item.lable,
        index
      });
    });
  }
};
</script>
<style scoped lang="">
</style>
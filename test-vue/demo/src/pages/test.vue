<template>
  <div>
    <Tabs>
      <TabsPance lable="标签一">内容一</TabsPance>
      <TabsPance lable="标签二">内容二</TabsPance>
      <TabsPance lable="标签三">内容三</TabsPance>
    </Tabs>
  </div>
</template>
<script>
export default {
  props: {},
  components: {},
  data() {
    return {};
  },
  computed: {},
  methods: {},
  created() {},
  mounted() {
      console.log(this.$children);
  }
};
</script>
<style scoped lang="">
</style>
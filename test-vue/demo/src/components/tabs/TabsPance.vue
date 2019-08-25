<template>
  <div>
      <slot></slot>
  </div>
</template>
<script>
export default {
  name: "TabsPance",
  props: {
    label: String,
    require: true
  },
  components: {},
  data() {
    return {};
  },
  computed: {},
  methods: {},
  created() {},
  mounted() {
    // console.log(this.$children);
  }
};
</script>
<style scoped lang="">
</style>
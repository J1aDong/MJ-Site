<template>
  <div>
    <div>gank</div>
  </div>
</template>

<script type="text/ecmascript-6">
  import HttpUtil from '../common/httpUtil'

  const gankBaseUrl = 'http://localhost:3000'

  export default {
    data() {
      return {
        msg: 'demo'
      }
    },
    async mounted() {
      console.log('mounted-->')
      let result = await HttpUtil.get({
        baseURL: gankBaseUrl,
        url: "/gank/data/Android/10/1"
      })
      console.log(JSON.stringify(result))

    }
  }
</script>

<style scoped lang="stylus" type="text/stylus">

</style>


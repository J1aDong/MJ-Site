<template>
  <div>
    <div>gank</div>
  </div>
</template>

<script type="text/ecmascript-6">
  import HttpUtil from '../common/httpUtil'

  let gankBaseUrl = 'http://localhost:3000'

  let env = process.env.NODE_ENV
  console.log('环境-->' + env)

  if (process.env.production === 'production') {
    console.log('生产环境')
    gankBaseUrl = 'http://47.96.31.106:32770'
  }

  // 阿里云公网 http://47.96.31.106:32770/gank/data/Android/10/1

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


<template>
  <div id="app">
    <div class="header-wrapper">
      <m-header></m-header>
    </div>
    <keep-alive>
      <router-view/>
    </keep-alive>
  </div>
</template>

<script>
  import './style/common.styl'
  import m_header from './components/header'

  export default {
    name: 'App',
    components: {
      "m-header": m_header,
    }
  }
</script>

<style lang="stylus" type="text/stylus">
  #app {
    font-family: 'Avenir', Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    color: #2c3e50;
  }

  body {
    margin: 0;
    padding: 0;
  }

  .header-wrapper
    position: fixed
    z-index 1
</style>

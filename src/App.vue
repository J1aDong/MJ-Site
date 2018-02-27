<template>
  <div id="app">
    <div class="header-wrapper" :class="{'header-wrapper-show':showHeaderColor}">
      <m-header></m-header>
      <a class="title">J1aDong.com</a>
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
    },
    data() {
      return {
        showHeaderColor: false
      }
    },
    created() {
      window.addEventListener('scroll', this.handleScroll)
    },
    methods: {
      handleScroll() {
        if (window.scrollY > 10) {
          this.showHeaderColor = true
        } else {
          this.showHeaderColor = false
        }
      }
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
    width 100%
    transition 1s ease-in-out

  .header-wrapper-show
    background-color rgba(249,249,249,0.63)

  .title
    position absolute
    left 50%
    top 50%
    transform translate(-50%, -50%)
    color white
    font-size 2rem
    text-shadow 1px 1px 10px rgba(65, 65, 65, 0.98)
</style>

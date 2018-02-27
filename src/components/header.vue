<template>
  <div class="header">
    <hamburger-menu class="hamburger-menu" @isOpen="upIsOpen" :isOpen="isOpen"></hamburger-menu>

    <mu-bottom-sheet :open="isOpen" @close="closeBottomSheet">
      <div class="list-top" @click="closeBottomSheet">
        <icon class="icon-x" name="close" color="white" scale="2"></icon>
      </div>
      <ul class="list-index">
        <router-link to="/" @click.native="closeBottomSheet">
          <li>主页</li>
        </router-link>
        <router-link to="/gank" @click.native="closeBottomSheet">
          <li>工具快导</li>
        </router-link>
        <li>我的作品</li>
        <li>我的音乐</li>
        <li>我的笔记</li>
      </ul>

      <div class="connect-with-me">联系我</div>

      <ul class="list-connect">
        <li><i class="iconfont icon-github"></i></li>
      </ul>
    </mu-bottom-sheet>
  </div>
</template>

<script type="text/ecmascript-6">
  import hamburger_menu from '../components/hamburger-menu'

  export default {
    components: {
      "hamburger-menu": hamburger_menu
    },
    data() {
      return {
        isOpen: false
      }
    },
    methods: {
      upIsOpen(val) {
        console.log("isOpen-->" + val)
        this.isOpen = val
      },
      closeBottomSheet() {
        this.isOpen = false
      }
    }
  }
</script>

<style scoped lang="stylus" type="text/stylus">
  .header
    display inline
    height 100px

  .hamburger-menu
    margin-left 5rem

  .list-top
    height 3rem
    text-align right
    background-color #323232

  .icon-x
    height 3rem
    margin-right 2rem

  .list-index
    background-color #323232
    margin 0
    padding 0
    color white
    font-size 2rem

    li
      list-style none
      text-align center
      padding 1rem
      transition 0.3s ease-in-out
      &:hover
        background-color #0f0f0f
        font-size 2.3rem

  .connect-with-me
    text-align center
    background-color #323232
    color #6d6d6d

  .list-connect
    list-style none
    text-align center
    li
      font-size 4rem
</style>


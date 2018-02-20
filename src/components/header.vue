<template>
  <div class="header">
    <hamburger-menu class="hamburger-menu" @isOpen="upIsOpen" :isOpen="isOpen"></hamburger-menu>

    <mu-bottom-sheet :open="isOpen" @close="closeBottomSheet">
      <div class="list-top" @click="closeBottomSheet">
        <icon name="comment"></icon>
      </div>
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
    height 100px
    width 100%

  .hamburger-menu
    margin-left 5rem

  .list-top
    height 3rem
    text-align right
    background-color #323232
</style>


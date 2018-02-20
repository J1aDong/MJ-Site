<template>
  <div class="mod model-1">
    <div class="menu" @click="toggle" :class="{'menu-open':myIsOpen}">
      <div class="bar"></div>
      <div class="bar"></div>
      <div class="bar"></div>
    </div>
  </div>
</template>

<script type="text/ecmascript-6">
  export default {
    props: {
      menuType: Number, // 1,2,3,4,5
      isOpen: {
        type: Boolean,
        default: false
      }
    },
    data() {
      return {
        myIsOpen: this.isOpen
      }
    },
    methods: {
      toggle() {
        this.myIsOpen = !this.myIsOpen
      },
    },
    watch: {
      isOpen(val) {
        this.myIsOpen = val
      },
      myIsOpen(val){
        this.$emit('isOpen', val)
      }
    }
  }
</script>

<style scoped lang="stylus" type="text/stylus">
  .menu
    height 100px
    width 100px
    position relative
    padding-top 20px
    border 5px solid transparent
    border-radius 100%
    transition 0.3s
    cursor pointer

  .bar
    height 5px
    width 70px
    display block
    margin 10px auto
    position relative
    background-color #fff
    border-radius 10px
    transition 0.4s
    box-shadow 0 0 20px #000000

  .model-1 .bar
    position absolute

  .model-1 .bar:nth-of-type(1)
    top 15px
    transition top 0.3s ease, transform 0.3s ease-out
    animation mrotr 2s cubic-bezier(0.5, 0.2, 0.2, 1.01)

  .model-1 .bar:nth-of-type(2)
    top 30px
    transition ease 0.3s
    animation fade 2s cubic-bezier(0.5, 0.2, 0.2, 1.01)

  .model-1 .bar:nth-of-type(3)
    top 45px
    transition top 0.3s ease, transform 0.3s ease-out
    animation mrotl 2s cubic-bezier(0.5, 0.2, 0.2, 1.01)

  .model-1 .menu-open .bar:nth-of-type(1)
    top 30px
    transform rotate(45deg)
    transition top 0.3s ease, transform 0.3s ease-out

  .model-1 .menu-open .bar:nth-of-type(2)
    opacity 0

  .model-1 .menu-open .bar:nth-of-type(3)
    top 30px
    transform rotate(-45deg);
    transition top 0.3s ease, transform 0.3s ease-out

</style>


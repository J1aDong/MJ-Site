<template>
  <div>

    <div class="slide-wrapper">
      <div class="slide-content">
        <mj-slider ref="slide" :autoPlay="isAutoPlay" :loop="isLoop" :showDot="isShowDot"
                   :interval="interval"
                   :threshold="threshold" :speed="speed">
          <div v-for="item in data">
            <a :href="item.linkUrl" target="_blank">
              <img :src="item.picUrl">
            </a>
          </div>
        </mj-slider>
      </div>
    </div>

    <div class="content-wrapper" ref="contentParent">
      <div v-for="item in homeContent.data" class="content-item">
        <a :href="item.url" target="_blank">
          <h1> {{item.title}}</h1>
        </a>
      </div>
    </div>

  </div>
</template>

<script type="text/ecmascript-6">
  import mj_slider from '../components/mj-slider'
  import homeContent from '../assets/homeContent'

  const items = [
    {
      linkUrl: 'http://www.framercn.com/',
      picUrl: 'http://chuantu.biz/t6/239/1519740430x-1404795894.png',
    },
    {
      linkUrl: 'http://hencoder.com/',
      picUrl: 'http://chuantu.biz/t6/239/1519740690x-1404793262.png',
    },
    {
      linkUrl: 'https://juejin.im/',
      picUrl: 'http://i2.bvimg.com/634095/0f5dc62b7a39b44a.png',
    }
  ]

  export default {
    components: {
      "mj-slider": mj_slider
    },
    computed: {
      data() {
        return items
      },
      homeContent() {
        return homeContent
      }
    },
    mounted(){
      let that = this

      this.$refs.contentParent.childNodes.forEach(function(item,index){
        console.log('childNodes-->'+item)
        item.style.backgroundColor = that.randomColor()
      })
    },
    methods: {
      randomColor() {
        let r = Math.floor(Math.random() * 255);
        let g = Math.floor(Math.random() * 255);
        let b = Math.floor(Math.random() * 255);
        let color = 'rgba(' + r + ',' + g + ',' + b + ',0.4)';
        return color
      }
    },
    data() {
      return {
        isOpen: false,

        turnToPrev: false,
        turnToNext: false,
        isAutoPlay: true,
        isLoop: true,
        isShowDot: true,
        speed: 400,
        threshold: 0.3,
        interval: 4000
      }
    }
  }
</script>

<style scoped lang="stylus" type="text/stylus">

  .slide-wrapper
    position: relative
    width: 100%
    padding-top: 30%
    margin-bottom: 10px
    overflow: hidden
    .slide-content
      position: absolute
      top: 0
      left: 0
      width: 100%
      height: 100%

  .content-wrapper
    margin 0 auto
    width 80%

  .content-item
    float left
    width 48%
    height 10rem
    border-radius 1rem
    background-color #7e57c2
    text-align center
    font-size 0.8rem
    margin 2% 1%
    padding 20px
    transition 1s ease-in-out

  .content-item:hover
    box-shadow 1px 1px 40px rgba(0, 0, 0, 0.86)
    transform scale(1.05)

</style>


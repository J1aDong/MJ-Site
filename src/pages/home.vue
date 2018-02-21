<template>
  <div>

    <div class="slide-wrapper">
      <div class="slide-content">
        <mj-slider ref="slide" :autoPlay="isAutoPlay" :loop="isLoop" :showDot="isShowDot"
                   :interval="interval"
                   :threshold="threshold" :speed="speed">
          <div v-for="item in data">
            <a :href="item.linkUrl">
              <img :src="item.picUrl" class="blur">
            </a>
          </div>
        </mj-slider>
      </div>
    </div>

  </div>
</template>

<script type="text/ecmascript-6">
  import mj_slider from '../components/mj-slider'

  const items = [
    [
      {
        linkUrl: 'http://y.qq.com/w/album.html?albummid=0044K2vN1sT5mE',
        picUrl: 'http://y.gtimg.cn/music/photo_new/T003R720x288M000001YCZlY3aBifi.jpg',
        id: 11351
      },
      {
        linkUrl: 'https://y.qq.com/m/digitalbum/gold/index.html?_video=true&id=2197820&g_f=shoujijiaodian',
        picUrl: 'http://y.gtimg.cn/music/photo_new/T003R720x288M000004ckGfg3zaho0.jpg',
        id: 11372
      }
    ],
    [
      {
        linkUrl: 'http://y.qq.com/w/album.html?albummid=001tftZs2RX1Qz',
        picUrl: 'http://y.gtimg.cn/music/photo_new/T003R720x288M00000236sfA406cmk.jpg',
        id: 11378
      },
      {
        linkUrl: 'https://y.qq.com/msa/218/0_4085.html',
        picUrl: 'http://y.gtimg.cn/music/photo_new/T003R720x288M000001s0BXx3Zxcwb.jpg',
        id: 11375
      },
      {
        linkUrl: 'https://y.qq.com/m/digitalbum/gold/index.html?_video=true&id=2195876&g_f=shoujijiaodian',
        picUrl: 'http://y.gtimg.cn/music/photo_new/T003R720x288M000002cwng4353HKz.jpg',
        id: 11287
      }
    ]
  ]

  export default {
    components: {
      "mj-slider": mj_slider
    },
    computed: {
      data() {
        return items[this.index]
      }
    },
    data() {
      return {
        isOpen: false,

        index: 1,
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

  .blur
    filter blur(20px)
</style>


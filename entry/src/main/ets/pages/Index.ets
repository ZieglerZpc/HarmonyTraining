@Entry
@Component
struct Index {
  private swiperController: SwiperController = new SwiperController()
  scrollerV: Scroller = new Scroller();
  private arrV: string[] = ["testtesttesttesttesttest", "trytrytyrtyrtyrtyrrtyrtyrtyrty", "wowowowowowowwwowowowowow"];

  scrollerH: Scroller = new Scroller();
  private arrH: String[] = ["testtesttesttesttesttest", "trytrytyrtyrtyrtyrrtyrtyrtyrty", "wowowowowowowwwowowowowow", "testtesttesttesttesttest", "trytrytyrtyrtyrtyrrtyrtyrtyrty"];


  build() {


    Tabs() {
      TabContent() {



        RelativeContainer() {
          Scroll(this.scrollerV) {

              Column() {


                Column() {
                  Text("首页").width('100%').fontSize(22).textAlign(TextAlign.Start).margin({top:5, left:5})
                  Stack({}) {
                    Swiper(this.swiperController) {
                      Text("0")
                        .width('90%')
                        .height('70%')
                        .borderRadius(10)
                        .backgroundColor(0xDCDCDC)
                        .textAlign(TextAlign.Center)
                        .fontSize(40)

                      Text("1")
                        .width('90%')
                        .height('70%')
                        .borderRadius(10)
                        .backgroundColor(0xCFCCCC)
                        .textAlign(TextAlign.Center)
                        .fontSize(40)

                      Text("2")
                        .width('90%')
                        .height('70%')
                        .borderRadius(10)
                        .backgroundColor(0xDCDCDC)
                        .textAlign(TextAlign.Center)
                        .fontSize(40)
                    }
                    .loop(false)

                    Text("12121212212121212testtesttesttesttest").letterSpacing(3).width('50%').fontSize(15).textAlign(TextAlign.Start).margin({left:5})
                  }.margin({top:5}).alignContent(Alignment.Start)

                }
                .borderRadius(15)
                .width('90%')
                .height(200)
                .backgroundColor('rgb(242,242,242)')









                Column() {
                  Text("热门商品").width('100%').fontSize(20).textAlign(TextAlign.Start).margin({top:5, left:5})

                  Scroll(this.scrollerH) {
                    Row() {
                      ForEach(this.arrH, (item:string) => {
                        Column() {

                          Column() {
                          }
                          .borderRadius(5)
                          .backgroundColor(0xDCDCDC)
                          .width(120)
                          .height(140)
                          .margin({ top: 10 })

                          Text(item.toString())
                            .height(70)
                            .width(150)
                            .fontSize(16)
                            .letterSpacing(3)
                            .textAlign(TextAlign.Center)

                        }
                        .margin(5)
                        .backgroundColor(0xFFFFFF)
                        .borderRadius(15)
                        .alignItems(HorizontalAlign.Center)
                      })
                    }
                  }
                  .scrollable(ScrollDirection.Horizontal) // 滚动方向为水平方向
                  .edgeEffect(EdgeEffect.Spring) // 滚动到边沿后回弹

                }
                .borderRadius(15)
                .width('90%')
                .height(270)
                .backgroundColor('rgb(242,242,242)')







                Column() {
                  Text("精选商品").width('100%').fontSize(20).textAlign(TextAlign.Start).margin({top:5, left:5})
                  Column() {
                    ForEach(this.arrV, (item:string) => {
                      Row() {
                        Column() {
                          Text(item.toString())
                            .width(180)
                            .height(70)
                            .fontSize(16)
                            .letterSpacing(3)
                        }
                        .alignItems(HorizontalAlign.Center)
                        Column() {
                        }
                        .width(120)
                        .backgroundColor(0xDCDCDC)
                        .height(70)
                        .borderRadius(15)
                      }
                      .width('95%')
                      .height(100)
                      .backgroundColor(0xFFFFFF)
                      .borderRadius(15)
                      .alignItems(VerticalAlign.Center)
                      .margin({ top: 10 })
                    })
                  }
                  .margin({bottom:10})
                  .width('100%')
                }
                .borderRadius(15)
                .width('90%')
                .backgroundColor('rgb(242,242,242)')







              }
              .width('100%')
              // .height('100%')
              .backgroundColor('rgb(242,242,242)')
              // .justifyContent(FlexAlign.Start)
              .justifyContent(FlexAlign.SpaceAround)
          }
          .backgroundColor('rgb(242,242,242)')
          .scrollable(ScrollDirection.Vertical) // 滚动方向为垂直方向
          .edgeEffect(EdgeEffect.Spring) // 滚动到边沿后回弹

        }
        // .height('100%')
        .width('100%')









      }
      .tabBar('首页')

      TabContent() {
        Text('推荐的内容').fontSize(30)
      }
      .tabBar('推荐')

      TabContent() {
        Text('发现的内容').fontSize(30)
      }
      .tabBar('发现')

      TabContent() {
        Text('我的内容').fontSize(30)
      }
      .tabBar("我的")
    }.barPosition(BarPosition.End)
  }
}
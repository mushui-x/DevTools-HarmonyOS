import router from '@ohos.router'
import { StyleConstants } from '../constants/StyleConstants'
import { Feature } from '../viewmodel/FeatureModel'

@Component
export struct FeatureList {
  @Prop featureList: Feature[] = []
  @Prop column: number = 0
  private onClickItem? = (Feature: Feature) => {
  }

  @Builder
  FeatureCard(data: Feature) {
    Column({ space: StyleConstants.SPACE_12 }) {
      Image(data.icon)
        .size({ width: $r("app.float.icon_size_40"), height: $r("app.float.icon_size_40") })
      Text(data.title).fontSize($r('app.float.small_font_size')).fontColor(Color.Black)
    }
    .alignItems(HorizontalAlign.Center)
    .justifyContent(FlexAlign.Center)
    .padding($r('app.float.vp_fourteen'))
    .width(StyleConstants.FULL_WIDTH)
    .backgroundColor($r('app.color.feature_card_bg'))
    .borderRadius($r('app.float.vp_eight'))
    .onClick(() => {
      if (this.onClickItem !== undefined) {
        this.onClickItem(data)
      }
    })
  }

  build() {
    if (this.featureList.length > 0) {
      List() {
        ForEach(this.featureList, (item: Feature) => {
          ListItem() {
            this.FeatureCard(item)
          }.margin($r('app.float.vp_six'))
        })
      }.margin($r('app.float.vp_six')).listDirection(Axis.Vertical).lanes(this.column)
    }
  }
}
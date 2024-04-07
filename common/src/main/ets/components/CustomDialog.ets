import { StyleConstants } from '../constants/StyleConstants'
import { Device } from '../viewmodel/DeviceModel'
import { Feature } from '../viewmodel/FeatureModel'

@CustomDialog
export struct InfoListDialog {
  @Prop feature: Feature
  @Prop data: Device[]
  controller: CustomDialogController
  share = () => {
  }
  copy = () => {
  }

  build() {
    Flex({ direction: FlexDirection.Column, justifyContent: FlexAlign.Center }) {
      Row({ space: StyleConstants.SPACE_12 }) {
        Image(this.feature.icon).size({ width: $r('app.float.icon_size_20'), height: $r('app.float.icon_size_20') })
        Text(this.feature.title).fontSize($r('app.float.middle_font_size')).fontWeight(FontWeight.Bold)
      }.width(StyleConstants.FULL_WIDTH).height($r('app.float.vp_forty')).alignItems(VerticalAlign.Center)

      List({ space: StyleConstants.SPACE_6 }) {
        ForEach(this.data, (item: Device) => {
          ListItem() {
            Text(item.label)
          }
        })
      }
      .width(StyleConstants.FULL_WIDTH)
      .height(StyleConstants.FULL_HEIGHT)
      .margin({ top: $r('app.float.vp_twelve'), bottom: $r('app.float.vp_twelve') })
      .scrollBar(BarState.Auto)

      Row({ space: StyleConstants.SPACE_12 }) {
        Button('分享').onClick(() => {
          this.share()
        })
        Button('复制').onClick(() => {
          this.copy()
        })
      }.width(StyleConstants.FULL_WIDTH).justifyContent(FlexAlign.End)
    }.height('50%').padding($r('app.float.vp_twenty_four'))
  }
}
import { StyleConstants, deviceInfoData, Device } from '@ohos/common'

@Entry
@Component
struct InfoDetailPage {
  @State label: string = ''

  @Builder
  Item(label: string) {
    Text(label)
  }

  build() {
    Flex() {
      List({ space: StyleConstants.SPACE_6 }) {
        ForEach(deviceInfoData, (item: Device) => {
          ListItem() {
            this.Item(item.label)
          }
        })
      }.width(StyleConstants.FULL_WIDTH).height(StyleConstants.FULL_HEIGHT).padding($r('app.float.vp_forty'))
    }
  }
}
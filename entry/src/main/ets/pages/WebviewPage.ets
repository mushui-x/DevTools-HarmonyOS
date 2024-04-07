import { StyleConstants } from '@ohos/common/src/main/ets/constants/StyleConstants'
import webview from '@ohos.web.webview';

@Entry
@Component
struct WebViewPage {
  @State url: string = ''
  webviewController: webview.WebviewController = new webview.WebviewController

  build() {
    Column({ space: StyleConstants.SPACE_12 }) {
      Flex({
        justifyContent: FlexAlign.Center,
        direction: FlexDirection.Row,
        alignContent: FlexAlign.Center,
        alignItems: ItemAlign.Center
      }) {
        TextInput({ placeholder: $r('app.string.WebView_input_placeholder') })
          .height(StyleConstants.FULL_HEIGHT)
          .onChange((value) => {
            this.url = value
          })
        Button('GO')
          .height(StyleConstants.FULL_HEIGHT)
          .width(100)
          .margin({ left: $r('app.float.vp_fourteen'), right: $r('app.float.vp_fourteen') })
          .onClick(() => {
            this.webviewController.loadUrl(this.url)
          })
        Image($r('app.media.ic_scan'))
          .size({ width: $r('app.float.icon_size_30'), height: $r('app.float.icon_size_30') })
      }
      .width(StyleConstants.FULL_WIDTH)
      .height($r('app.float.vp_forty'))
      .padding({ left: $r('app.float.vp_fourteen'), right: $r('app.float.vp_fourteen') })

      Web({ src: this.url, controller: this.webviewController })
        .size({ width: StyleConstants.FULL_WIDTH, height: StyleConstants.FULL_HEIGHT })
    }.padding({ top: $r('app.float.vp_forty') })
  }
}
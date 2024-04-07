import { StyleConstants } from '../constants/StyleConstants'
import { FeatureCategories } from '../viewmodel/FeatureModel'

export const featureData: FeatureCategories[] = [
  {
    title: '设备相关',
    feature: [
      {
        id: StyleConstants.FEATURE_ID_DEVICE_INFO,
        title: '设备信息',
        icon: $r('app.media.ic_data'),
        page: ''
      },
      {
        id: StyleConstants.FEATURE_ID_DISPLAY,
        title: '屏幕属性',
        icon: $r('app.media.ic_screen'),
        page: ''
      },
      {
        id: StyleConstants.FEATURE_ID_BATTERY_INFO,
        title: '电量信息',
        icon: $r('app.media.ic_battery'),
        page: ''
      }
    ]
  },
  {
    title: '常用工具',
    feature: [
      {
        id: StyleConstants.FEATURE_ID_WEB_VIEW,
        title: 'Webview',
        icon: $r('app.media.ic_network'),
        page: 'pages/WebviewPage'
      }
    ]
  }
]
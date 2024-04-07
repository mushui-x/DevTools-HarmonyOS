import {
  featureData,
  Feature,
  FeatureCategories,
  FeatureCategoriesHeader,
  FeatureList,
  BreakpointSystem,
  BreakpointConstants,
  StyleConstants,
  InfoListDialog,
  deviceInfoData,
  batteryInfoData,
  displayData,
  Device
} from '@Ohos/common'
import router from '@ohos.router';
import hilog from '@ohos.hilog';

@Entry
@Component
struct Index {
  @State featureCategories: FeatureCategories[] = []
  @State feature: Feature = null
  @State infoListData: Device[] = []
  @StorageProp('currentBreakpoint') currentBreakpoint: string = 'sm'
  private breakpointSystem = new BreakpointSystem()
  dialogController: CustomDialogController = new CustomDialogController({
    builder: InfoListDialog({
      feature: this.feature,
      data: this.infoListData,
      share: this.onShare(),
      copy: this.onCopy()
    }),
    alignment: DialogAlignment.Center,
    gridCount: 6
  })

  onShare() {
    console.info('onShare')
  }

  onCopy() {
    console.info('onCopy')
  }

  aboutToAppear() {
    this.breakpointSystem.register()
    this.featureCategories = featureData
  }

  aboutToDisappear() {
    this.breakpointSystem.unregister()
  }

  build() {
    List() {
      ForEach(this.featureCategories, (item: FeatureCategories) => {
        ListItem() {
          Column() {
            FeatureCategoriesHeader({ title: item.title })
            FeatureList({
              featureList: item.feature,
              column: this.currentBreakpoint === BreakpointConstants.BREAKPOINT_LG ? 6 : 4,
              onClickItem: (item: Feature) => this.nextAction(item)
            })
          }
        }
      }, (item: FeatureCategories) => JSON.stringify(item))
    }.width(StyleConstants.FULL_WIDTH).height(StyleConstants.FULL_HEIGHT).padding($r('app.float.vp_forty'))
  }

  nextAction(item: Feature) {
    this.feature = item
    if (item.id === StyleConstants.FEATURE_ID_DEVICE_INFO) {
      this.infoListData = deviceInfoData
      this.dialogController.open()
    } else if (item.id === StyleConstants.FEATURE_ID_DISPLAY) {
      this.infoListData = displayData
      this.dialogController.open()
    } else if (item.id === StyleConstants.FEATURE_ID_BATTERY_INFO) {
      this.infoListData = batteryInfoData
      this.dialogController.open()
    } else if (item.id === StyleConstants.FEATURE_ID_WEB_VIEW) {
      this.routerNextPage(item)
    }
  }

  routerNextPage(item: Feature) {
    router.pushUrl({ url: item.page }).catch((err: Error) => {
      hilog.error(0x00, "Index", JSON.stringify(err))
    })
  }
}

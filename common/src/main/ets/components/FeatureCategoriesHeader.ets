import { StyleConstants } from '../constants/StyleConstants'

@Component
export struct FeatureCategoriesHeader {
  @Prop title: string

  build() {
    Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center, alignContent: FlexAlign.SpaceAround }) {
      Text(this.title)
        .fontSize($r('app.float.middle_font_size'))
        .fontWeight(FontWeight.Bold)
        .fontColor(Color.Black)
    }.width(StyleConstants.FULL_WIDTH).height($r('app.float.feature_categories_header_height'))
  }
}
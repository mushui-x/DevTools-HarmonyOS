export class FeatureCategories {
  title: string = ''
  feature?: Feature[] = []
}

export class Feature {
  id: string = ''
  title: string = ''
  icon: Resource
  page: string = ''
}
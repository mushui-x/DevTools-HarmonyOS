import { Device } from './DeviceModel'
import deviceInfo from '@ohos.deviceInfo';
import batteryInfo from '@ohos.batteryInfo';
import display from '@ohos.display';

/**
 * 设备信息
 */
export const deviceInfoData: Device[] = [
  {
    label: `设备类型：${deviceInfo.deviceType}`
  },
  {
    label: `厂家名称：${deviceInfo.manufacture}`
  },
  {
    label: `品牌名称：${deviceInfo.brand}`
  },
  {
    label: `外部产品系列：${deviceInfo.marketName}`
  },
  {
    label: `产品系列：${deviceInfo.productSeries}`
  },
  {
    label: `认证型号：${deviceInfo.productModel}`
  },
  {
    label: `内部软件子型号：${deviceInfo.softwareModel}`
  },
  {
    label: `硬件版本号：${deviceInfo.hardwareModel}`
  },
  {
    label: `系统的发布类型：${deviceInfo.osReleaseType}`
  },
  {
    label: `系统版本：${deviceInfo.osFullName}`
  },
  {
    label: `Major版本号：${deviceInfo.majorVersion}`
  },
  {
    label: `Senior版本号：${deviceInfo.seniorVersion}`
  },
  {
    label: `Feature版本号：${deviceInfo.featureVersion}`
  },
  {
    label: `Build版本号：${deviceInfo.buildVersion}`
  },
  {
    label: `系统软件API版本：${deviceInfo.sdkApiVersion}`
  },
  {
    label: `首个版本系统软件API版本：${deviceInfo.firstApiVersion}`
  },
  {
    label: `版本ID：${deviceInfo.versionId}`
  },
  {
    label: `构建类型：${deviceInfo.buildType}`
  }
]

/**
 * 电量信息
 */
export const batteryInfoData: Device[] = [
  {
    label: `当前设备剩余电池电量百分比：${batteryInfo.batterySOC}`
  },
  {
    label: `当前设备电池的充电状态：${batteryInfo.chargingStatus}`
  },
  {
    label: `当前设备电池的健康状态：${batteryInfo.healthStatus}`
  },
  {
    label: `当前设备连接的充电器类型：${batteryInfo.pluggedType}`
  },
  {
    label: `当前设备电池的电压：${batteryInfo.voltage}`
  },
  {
    label: `当前设备电池的技术型号：${batteryInfo.technology}`
  },
  {
    label: `表示当前设备电池的温度：${batteryInfo.batteryTemperature}`
  },
  {
    label: `当前设备是否支持电池或者电池是否在位：${batteryInfo.isBatteryPresent}`
  },
  {
    label: `当前设备电池电量的等级：${batteryInfo.batteryCapacityLevel}`
  }
]

/**
 * 屏幕属性
 */
export const displayData: Device[] = [
  {
    label: `id号：${display.getDefaultDisplaySync().id}`
  },
  {
    label: `名称：${display.getDefaultDisplaySync().name}`
  },
  {
    label: `是否启用：${display.getDefaultDisplaySync().alive}`
  },
  {
    label: `状态：${display.getDefaultDisplaySync().state}`
  },
  {
    label: `刷新率：${display.getDefaultDisplaySync().refreshRate}`
  },
  {
    label: `屏幕旋转角度：${display.getDefaultDisplaySync().rotation}`
  },
  {
    label: `屏幕分辨率：${display.getDefaultDisplaySync().width}*${display.getDefaultDisplaySync().height}`
  },
  {
    label: `屏幕密度：${display.getDefaultDisplaySync().densityDPI}`
  },
  {
    label: `逻辑密度：${display.getDefaultDisplaySync().densityPixels}`
  },
  {
    label: `显示字体的缩放因子：${display.getDefaultDisplaySync().scaledDensity}`
  },
  {
    label: `x方向中每英寸屏幕的确切物理像素值：${display.getDefaultDisplaySync().xDPI}`
  },
  {
    label: `y方向中每英寸屏幕的确切物理像素值：${display.getDefaultDisplaySync().yDPI}`
  }
]
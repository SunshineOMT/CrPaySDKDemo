## CrPaySDKDemo
### 集成说明：
本项目依赖于cocoapods，假定集成项目是以cocoapods搭建的，然后按照以下步骤集成：
* (1)将CrlandPaySDK.framework拖入项目中;
* (2)若podfile文件包含了YTKNetwork,则直接在podfile目录下执行pod install即可；若podfile文件中未包含YTKNetwork,
* 则需要在podfile文件中添加pod 'YTKNetwork'，然后在该目录下执行pod install。

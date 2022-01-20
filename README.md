# AdyenWeChatPayInternal

The [WeChat Pay SDK](https://developers.weixin.qq.com/doc/oplatform/en/Downloads/iOS_Resource.html) is a static `.a` library. This repository provides an XCFramework around the static library for more convenient importing of the WeChat Pay SDK. This is especially useful when using Swift Package Manager.

Embeded WeChat SDK versions: 1.9.2

:heavy_exclamation_mark: WeChat SDK versions 1.8.6.1 and below contain UIKit symbols and cause rejection during App Store Review: "ITMS-90809: Deprecated API Usage".


## Requirements

- For embedding the XCFramework into an Xcode project, Xcode 11+ is required.
- For integrating through Swift Package Manager, Xcode 12+ is required.
- Supports iOS 10+.

## Installation

### Embedding XCFramework.

1. Drag the XCFramework into your Frameworks folder.
2. Make sure to Select “Copy items if needed” and “Create groups” options when adding the XCFramework file.
3. Navigate to your project settings, then General tab, under “Frameworks, Libraries and Embedded Content”, make sure to select “Embed & Sign” for your newly added XCFramework.

### Swift Package Manager

1. Follow Apple's [Adding Package Dependencies to Your App](
https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app
) guide on how to add a Swift Package dependency.
2. Use `https://github.com/Adyen/adyen-wechatpay-ios` as the repository URL.
3. Specify the version to be at least `2.0.0`.

:warning: _Please make sure to use Xcode 12.0+ when adding `AdyenWeChatPayInternal` using Swift Package Manager._

:warning: _Swift Package Manager for Xcode 12.0 and 12.1 has a [know issue](https://bugs.swift.org/browse/SR-13343) when it comes to importing binary dependencies. A workaround is described [here](https://forums.swift.org/t/swiftpm-binarytarget-dependency-and-code-signing/38953)._
### CocoaPods

1. Add `pod 'AdyenWeChatPayInternal'` to your `Podfile`.
2. Run `pod install`.

### Carthage

1. Add `github "adyen/adyen-wechatpay-ios"` to your `Cartfile`.
2. Run `carthage update --use-xcframeworks`.
3. Link the framework with your target as described in [Carthage Readme](https://github.com/Carthage/Carthage#adding-frameworks-to-an-application).

Note: for non-M1 mac use workarounds from [here](https://github.com/Carthage/Carthage/issues/3019#issuecomment-665136323)

## Usage

AdyenWeChatPayInternal is just a wrapper around [the original WeChat Pay SDK](https://developers.weixin.qq.com/doc/oplatform/en/Downloads/iOS_Resource.html), with a few minor improvements:
- Handles the importing of the dependent system frameworks and libraries.
- Removes the need for adding `-Objc and -all_load` other linker flags to the your project build settings.

Other than these improvements, the framework works in the same way as the original WeChat Pay SDK.

:warning: WeChat `.a` static library does not support simulator for `arm64` architecture.
To debug on simulator on Apple Silicon (M1) machine use debug flags

```swift

#if !(targetEnvironment(simulator) && arch(arm64))

// Code that calls WeChat SDK

#endif

```

## Documentation

Refer to the [original documentation](https://developers.weixin.qq.com/doc/oplatform/en/Mobile_App/Access_Guide/iOS.html).

## Support

If you have a feature request, or spotted a bug or a technical problem regarding the XCFramework wrapper, create a GitHub issue. For other questions or issues regarding the SDK, contact [WeChat Pay iOS SDK support](https://developers.weixin.qq.com/doc/oplatform/en/Mobile_App/Access_Guide/iOS.html).

## License    

MIT license. For more information, see the LICENSE file.

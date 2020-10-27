# AdyenWeChatPayInternal
[WeChat SDK](https://developers.weixin.qq.com/doc/oplatform/en/Downloads/iOS_Resource.html) is a static .a library, so this repo exposes a wrapper xcframework around the static library for more convenient importing of WeChat SDK specially for Swift Package Manager.

## Contributing
We strongly encourage you to contribute to our repository. Find out more in our [contribution guidelines](https://github.com/Adyen/.github/blob/master/CONTRIBUTING.md)

## Requirements
Explain the requirements for using the repo (e.g. which minimum iOS version is needed to run the SDK).

### For embedding the XCFramework into an xcode project, Xcode 11+ is required.
### For integrating through Swift Package Manager, Xcode 12+ is required.
### Supports iOS 10+.

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
3. Specify the version to be at least `1.0.0`.

:warning: _Please make sure to use Xcode 12.0+ when adding `AdyenWeChatPayInternal` using Swift Package Manager._

:warning: _Swift Package Manager for Xcode 12.0 and 12.1 has a [know issue](https://bugs.swift.org/browse/SR-13343) when it comes to importing binary dependencies. A workaround is described [here](https://forums.swift.org/t/swiftpm-binarytarget-dependency-and-code-signing/38953)._

## Usage
AdyenWeChatPayInternal is just a wrapper around [the original WeChat Pay SDK](https://developers.weixin.qq.com/doc/oplatform/en/Downloads/iOS_Resource.html), except that it handles the importing of the dependent system frameworks and libraries and removes the need for adding `-Objc and -all_load` other linker flags to the your project build settings, but otherwise works the same.

## Documentation
Refer to the [original documentation](https://developers.weixin.qq.com/doc/oplatform/en/Mobile_App/Access_Guide/iOS.html).

## Support
If you have a feature request, or spotted a bug or a technical problem, create a GitHub issue. For other questions, contact our [support team](https://support.adyen.com/hc/en-us/requests/new?ticket_form_id=360000705420).    

## License    
MIT license. For more information, see the LICENSE file.

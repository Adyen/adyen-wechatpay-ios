version = '2.0.0'

Pod::Spec.new do |spec|
  spec.name                   = 'AdyenWeChatPayInternal'
  spec.version                = version
  spec.license                = { :type => 'MIT', :file => 'LICENSE' }
  spec.homepage               = 'https://adyen.com'
  spec.authors                = { 'Adyen' => 'support@adyen.com' }
  spec.summary                = 'Provides an XCFramework around the static library for more convenient importing of the WeChat Pay SDK.'
  spec.source                 = { :git => 'https://github.com/adyen/adyen-wechatpay-ios.git', :tag => version }
  spec.vendored_frameworks    = 'AdyenWeChatPayInternal.xcframework'
  spec.ios.deployment_target  = '10.0'

  # workaround for binary dependencies, see https://github.com/CocoaPods/CocoaPods/issues/10065
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end

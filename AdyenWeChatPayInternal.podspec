version = '2.1.0'

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

end

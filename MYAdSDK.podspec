Pod::Spec.new do |s|
s.name        = 'MYAdSDK'
s.version     = '0.0.11'
s.summary     = 'Mobile AD SDK For iOS.'
s.homepage    = 'https://github.com/adxdata/MSMobAdSDK-iOS'
s.license     = 'MIT'
s.author      = { 'Lei Dai' => '534219838@qq.com' }
s.platform    = :ios
s.ios.deployment_target = '9.0'

s.source      = { :git => 'https://github.com/ywxkdz/MYAdSDK.git', :tag => "#{s.version}" }

s.frameworks  = 'AdSupport', 'AVFoundation', 'CoreLocation', 'CoreMedia', 'CoreMotion', 'CoreTelephony', 'MessageUI', 'QuartzCore', 'SafariServices', 'Security', 'StoreKit', 'SystemConfiguration', 'WebKit'
s.libraries   = 'c++', 'resolv.9', 'xml2', 'z'

s.vendored_frameworks  = 'MSAdSDK/Libs/MSAdSDK.framework'

s.static_framework     = true

s.resource   = 'MSAdSDK/Libs/MSAdBundle.bundle'

s.dependency 'AFNetworking'

end

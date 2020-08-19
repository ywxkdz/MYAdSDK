Pod::Spec.new do |s|
s.name        = 'MYAdSDKDemo'
s.version     = '0.0.10'
s.summary     = 'Mobile AD SDK DEMO For iOS.'
s.homepage    = 'https://github.com/adxdata/MSMobAdSDK-iOS'
s.license     = 'MIT'
s.author      = { 'Lei Dai' => '534219838@qq.com' }
s.platform    = :ios, '9.0'

s.source      = { :git => 'https://github.com/ywxkdz/MYAdSDK.git', :tag => "#{s.version}" }

s.source_files = 'MSAdSDK/Classes/**/*.{h,m}'

s.static_framework     = true

s.prefix_header_file = 'MSAdSDK/Classes/Header/PrefixHeader.pch'

s.dependency 'MYAdSDK'

end

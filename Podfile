platform :ios, '7.0'

pod 'AFNetworking', '~> 2.1.0'
pod 'DCTCoreDataStack', :podspec => '.'

target :test, :exclusive => true do
    link_with 'iOS-apiTests'
    pod 'Expecta', '~> 0.2.3'
    pod 'Specta', '~> 0.2.1'
    pod 'OHHTTPStubs', '~> 3.1.0'
end

#
# Be sure to run `pod lib lint SESDKODMInfo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SESDKODMInfo'
  s.version          = '0.0.1'
  s.summary          = 'Official SESDKODMInfo for iOS.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/solarengine-sdk/SESDKODMInfo'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          =  { :type => "Apache License, Version 2.0" }
  s.author           = { 'solarengine-sdk' => 'sdk@solar-engine.com' }
  s.source           = { :git => 'https://github.com/solarengine-sdk/SESDKODMInfo.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  s.vendored_frameworks = 'SESDKODMInfo/*.xcframework'
  s.requires_arc = true

  s.dependency 'GoogleUtilities', '~> 8.1'
  s.dependency 'nanopb', '~> 3.30910.0'
  s.dependency 'GoogleAdsOnDeviceConversion', '~> 2.0.0'

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end

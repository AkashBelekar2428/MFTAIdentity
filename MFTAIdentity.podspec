#
# Be sure to run `pod lib lint MFTAIdentity.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MFTAIdentity'
  s.version          = '0.0.1'
  s.summary          = 'Simple Library of MFTAIdentity.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  'One Of the best Library. Very simple to use and readable'
                       DESC

  s.homepage         = 'https://github.com/akashbelekar2428/MFTAIdentity'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'akashbelekar2428' => 'akashbelekar108@gmail.com' }
  s.source           = { :git => 'https://github.com/akashbelekar2428/MFTAIdentity.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.ios.deployment_target = '12.0'
  s.swift_version = '5.0'
  s.dependency 'Alamofire', '~> 5.4'
  s.dependency 'SVProgressHUD'
  s.dependency 'ObjectMapper', '~> 4.2'
  s.resources = [
                  'Source/Assets/photo.xcassets',
                  'Source/Authenticator/Authenticator.swift',
                  'Source/ComponentManager/ComponentManager.swift',
                  'Source/Configurations/AuthenticationConfiguration.swift',
                  'Source/Constants/Constant.swift',
                  'Source/DataPickerView/DataPickerView.swift',
                  'Source/EmailAuth/Email_Address.swift',
                  'Source/Fonts/**/*.ttf',
                  'Source/LoginAuth/AuthenticationLogIn.swift',
                  'Source/MobileAuth/Mobile_Number.swift',
                  'Source/Network/**/*.swift',
                  'Source/PINAuth/PINView.swift',
                  'Source/Protocol/**/*.swift',
                  'Source/Request/**/*.swift',
                  'Source/Resources/**/*.xib',
                  'Source/Response/**/*.swift',
                  'Source/UIClasses/**/*.swift',
                  'Source/Utility/**/*.swift',
                  'Source/ValidationManager/**/*.swift'
                ]
  s.source_files = 'Source/**/*.swift'
end

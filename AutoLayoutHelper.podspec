#
# Be sure to run `pod lib lint AutoLayoutHelper.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AutoLayoutHelper'
  s.version          = '1.0.0'
  s.summary          = 'It is very helpful when you adjust layout.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
The most difficult thing when I made the source as a screen seems to be auto layout.
It's easy to create a storyboard, but it's a bit tricky to source,
I guess I'm probably not used to it.

So this is a frame that I made to make it more comfortable to use.
It is easier and more convenient to use,
You can apply AutoLayout to apply multiple lines in one line!

Please feel free to email us any inconvenience :)

* Still updating! We will only notify you of the latest details in the description!
* Translation may not be accurate...

                       DESC

  s.homepage         = 'none'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Eunryu' => 'instru93@naver.com' }
  s.source           = { :git => 'https://github.com/Eunryu/AutoLayoutHelper.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.source_files = 'AutoLayoutHelper/Classes/**/*'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => ' >=4.0', 'SDKROOT' => ''}

  # s.resource_bundles = {
  #   'AutoLayoutHelper' => ['AutoLayoutHelper/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

Pod::Spec.new do |s|
  s.name             = 'HiNav'
  s.version          = '1.0.0'
  s.summary          = 'Nav function.'
  s.description      = <<-DESC
						Nav function using Swift.
                       DESC
  s.homepage         = 'https://github.com/tospery/HiNav'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'YangJianxiang' => 'tospery@gmail.com' }
  s.source           = { :git => 'https://github.com/tospery/HiNav.git', :tag => s.version.to_s }

  s.requires_arc = true
  s.swift_version = '5.3'
  s.ios.deployment_target = '13.0'
  s.frameworks = 'Foundation'
  
  s.source_files = 'HiNav/**/*'
  s.dependency 'HiCore', '~> 1.0'
  s.dependency 'RxSwift', '~> 6.0'
  s.dependency 'URLNavigator-Hi', '2.5.1-v1'
  s.dependency 'SwifterSwift/UIKit', '~> 6.0'
  
end

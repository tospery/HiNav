Pod::Spec.new do |s|
  s.name             = 'HiNav'
  s.version          = '1.1.0'
  s.summary          = 'Nav module.'
  s.description      = <<-DESC
						Nav module using Swift.
                       DESC
  s.homepage         = 'https://github.com/tospery/HiNav'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'YangJianxiang' => 'tospery@gmail.com' }
  s.source           = { :git => 'https://github.com/tospery/HiNav.git', :tag => s.version.to_s }

  s.requires_arc = true
  s.swift_version = '5.3'
  s.ios.deployment_target = '16.0'
  s.frameworks = 'Foundation'
  
  s.subspec 'Core' do |ss|
    ss.source_files = 'HiNav/Core/**/*'
  	ss.dependency 'HiBase', '~> 1.0'
    ss.dependency 'SwifterSwift/UIKit', '~> 6.0'
  end
  
  s.subspec 'RxSwift' do |ss|
    ss.source_files = 'HiNav/RxSwift/**/*'
  	ss.dependency 'HiNav/Core'
  	ss.dependency 'RxSwift', '~> 6.0'
  	ss.dependency 'URLNavigator-Hi', '2.5.1-v1'
  end
  
  s.subspec 'Combine' do |ss|
    ss.source_files = 'HiNav/Combine/**/*'
	ss.dependency 'HiNav/Core'
  end
  
end

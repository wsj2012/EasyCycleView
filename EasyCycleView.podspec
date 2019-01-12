Pod::Spec.new do |s|
s.name         = "EasyCycleView"
s.version      = "1.0.0"
s.summary      = "支持多种样式的轮播图，支持带指定文案、带缩放效果的样式、支持自定制指示器，支持最新的swift4.0以上版本。"
s.homepage     = "https://github.com/wsj2012/EasyCycleView"
s.license      = "MIT"
s.author       = { "wsj_2012" => "time_now@yeah.net" }
s.source       = { :git => "https://github.com/wsj2012/EasyCycleView.git", :tag => "#{s.version}" }
s.requires_arc = true
s.ios.deployment_target = "9.0"
s.source_files  = "Libs/*.{swift}"
s.swift_version = '4.2'
s.dependency 'Kingfisher'

end

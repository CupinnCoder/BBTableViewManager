Pod::Spec.new do |s|
  s.name         = "BBTableViewManager"
  s.version      = "0.0.1"
  s.summary      = "ASPkit列表管理器"
  s.homepage     = "https://github.com/CupinnCoder/BBTableView"
  s.license      = "Copyright (C) 2016 Gary, Inc.  All rights reserved."
  s.author             = { "zhuguanyu" => "zhuguanyu@cupinn.com" }
  s.social_media_url   = "http://www.cupinn.com"
  s.ios.deployment_target = "7.0"
  s.source       = { :git => "https://github.com/CupinnCoder/BBTableView.git"}
  s.source_files  = "BBTableViewManager/BBTableViewManager/**/*.{h,m,c}"
  s.requires_arc = true
  s.dependency 'pop'
  s.dependency 'AsyncDisplayKit'
  s.dependency 'YYKit'
end

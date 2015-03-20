Pod::Spec.new do |s|
  s.name         = "LSKRoundedProgressView"
  s.version      = "0.0.1"
  s.summary      = "rounded progress indicator"
  s.description  = "inimal (truly minimal :) rounded progress indicator"
  s.homepage     = "https://github.com/liushuaikobe/LSKRoundedProgressView"
  s.screenshots  = "https://github.com/liushuaikobe/LSKRoundedProgressView/blob/master/demo.gif"
  s.license      = "MIT"
  s.author       = { "liushuaikobe" => "liushuaikobe@gmail.com" }
  s.social_media_url   = "http://twitter.com/liushuaikobe"
  s.platform     = :ios
  s.source       = { :git => "https://github.com/liushuaikobe/LSKRoundedProgressView.git", :tag => "0.0.1" }
  s.source_files = "LSKRoundedProgressView/*.{h,m}"
  s.framework  = "QuartzCore"
  s.requires_arc = true
end

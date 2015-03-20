Pod::Spec.new do |s|
  s.name         = "LSKRoundedProgressView"
  s.version      = "0.0.1"
  s.summary      = "rounded progress indicator"
  s.description  = "inimal (truly minimal :) rounded progress indicator"
  s.homepage     = "https://github.com/liushuaikobe/LSKRoundedProgressView"
  s.license      = "MIT"
  s.author       = { "liushuaikobe" => "liushuaikobe@gmail.com" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/liushuaikobe/LSKRoundedProgressView.git", :tag => "0.0.1" }
  s.source_files = "LSKRoundedProgressView/*.{h,m}"
  s.framework  = "QuartzCore"
  s.requires_arc = true
end

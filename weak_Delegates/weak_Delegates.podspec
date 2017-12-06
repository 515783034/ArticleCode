
Pod::Spec.new do |s|

  s.name         = "weak_Delegates"
  s.version      = "0.1.1"
  s.summary      = "how to create delegates with `weak`"


  s.description  = <<-DESC
                    This is a solution to use weak array.
                    DESC

  s.source       = { :git => "https://github.com/515783034/weak_Delegates.git", :tag => "#{s.version}" }

  s.source_files = "weak_Delegates/Sources/*.swift"

  s.homepage     = "https://github.com/515783034/weak_Delegates"
  s.screenshots  = "http://upload-images.jianshu.io/upload_images/988961-e4f2b08ed4f1f430.gif?imageMogr2/auto-orient/strip"
  s.license      = "MIT"
  
  s.platform     = :ios, "9.0"

  s.author             = { "shmily" => "shmilyshijian@foxmail.com" }
  s.social_media_url   = "http://www.jianshu.com/u/3095a094665c"

end

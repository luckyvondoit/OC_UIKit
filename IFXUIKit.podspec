Pod::Spec.new do |spec|

  spec.name         = "IFXUIKit"
  spec.version      = "0.0.1"
  spec.summary      = "usage of UIKit"

  spec.description  = <<-DESC
  summay of UIKit
                   DESC

  spec.homepage     = "https://github.com/luckyvondoit/OC_UIKit.git"

  spec.license      = {:type => 'BSD'}
  spec.author             = { "luckyvon" => "luckyvondoit@163.com" }

  spec.platform     = :ios, "9.0"

  spec.source       = { :git => "https://github.com/luckyvondoit/OC_UIKit.git", :tag => "#{spec.version}" }

  spec.source_files  = "Classes", "Classes/**/*.{h,m,md}"
  spec.exclude_files = "Classes/Exclude"

  # spec.public_header_files = "Classes/**/*.h"

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end

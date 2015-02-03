Pod::Spec.new do |s|

  s.name         = "Facebook-iOS-SDK"
  s.version      = "3.13.2"
  s.summary      = "Official Facebook SDK for iOS to access Facebook Platform with features like Login, Share and Message Dialog, App Links, and Graph API"

  s.description  = <<-DESC
                   The Facebook SDK for iOS enables you to use Facebook's Platform such as:
                   * Facebook Login to easily sign in users.
                   * Sharing features like the Share or Message Dialog to grow your app.
                   * Simpler Graph API access to provide more social context.
                   DESC

  s.homepage     = "https://developers.facebook.com/docs/ios/"
  s.license      = { :type => "Apache License, Version 2.0", :file => "LICENSE" }

  s.author             = 'Facebook'

  s.platform     = :ios, "6.0"

  s.source       = { :git => "https://github.com/Busta117/facebook-ios-sdk.git",
                     :tag => "sdk-version-3.13.2"
                    }

  s.source_files  =  "src/*.{h,m}",
    "src/Base64/*.{h,m}",
    "src/Cryptography/*.{h,m}",
    "src/Ads/*.{h,m}",
    "src/Core/*.{h,m}",
    "src/DeviceAPI/*.{h,m}",
    "src/Legacy/*.{h,m}",
    "src/Login/*.{h,m}",
    "src/Network/*.{h,m}",
    "src/UI/*.{h,m}",
    "src/Insights/*.{h,m}"
  
  s.exclude_files = "src/**/*Tests.{h,m}", "src/tests/*.{h,m}", "src/*Test*/*.{h,m}"

  s.header_dir = "FacebookSDK"

  s.resources = "src/FBUserSettingsViewResources.bundle"

  s.weak_frameworks = "Accounts", "CoreLocation", "Social", "Security"

  s.requires_arc = false

  # Note the prepare_command is not run against pods installed with the :path option (i.e., a local pod)
  s.prepare_command = "find src -name \\*.png | grep -v @ | grep -v -- - | sed -e 's|\\(.*\\)/\\([a-zA-Z0-9]*\\).png|python scripts/image_to_code.py -i \\1/\\2.png -c \\2 -o src|' | sh"

end

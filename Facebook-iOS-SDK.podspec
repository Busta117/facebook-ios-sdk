{
  "name": "Facebook-iOS-SDK",
  "version": "3.13.2",
  "platforms": {
    "ios": null
  },
  "license": "Apache License, Version 2.0",
  "summary": "The iOS SDK provides Facebook Platform support for iOS apps.",
  "description": "The Facebook SDK for iOS enables you to access the Facebook Platform APIs including the Graph API, FQL, and Dialogs.",
  "homepage": "https://developers.facebook.com/docs/ios/",
  "authors": "Facebook",
  "source": {
    "git": "https://github.com/Busta117/facebook-ios-sdk.git",
    "tag": "sdk-version-3.13.2"
  },
  "source_files": [
    "src/*.{h,m}",
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
  ],
  "resources": "src/FBUserSettingsViewResources.bundle",
  "header_dir": "FacebookSDK",
  "weak_frameworks": [
    "Accounts",
    "Social",
    "Security"
  ],
  "frameworks": "CoreLocation",
  "prepare_command": "find src -name \\*.png | grep -v @ | grep -v -- - | sed -e 's|\\(.*\\)/\\([a-zA-Z0-9]*\\).png|python scripts/image_to_code.py -i \\1/\\2.png -c \\2 -o src|' | sh",
  "requires_arc": false
}
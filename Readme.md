
### Sample project for CocoaPods with nested dependencies

Steps to reproduce:
* install xcremote cache cocoapods plugin: `gem install cocoapods-xcremotecache`
* add `self` origin: `git remote add self .`
* start an nginx server, e.g. `nginx`
* `pod install`
* Build a project from Xcode and verify uploaded meta files, e.g. 


```
{
  "inputs": [],
  "generationCommit": "9b5fa7fb5479329c7056391c63a16f07ae60c4fb",
  "pluginsKeys": {},
  "targetName": "name1",
  "platform": "iphonesimulator",
  "configuration": "Debug",
  "rawFingerprint": "1e781b6d9df5f75605f60b14cc5b76be",
  "fileKey": "fe0756c8aec1fd2126f453b1da5b2778",
  "dependencies": [
    "$(SRCROOT)/Target Support Files/name1/name1-dummy.m",
    "$(SRCROOT)/Target Support Files/name1/name1-prefix.pch",
    "$(BUILD_DIR)/Debug-iphonesimulator/name1/name1.framework/Headers/name1-umbrella.h",
    "$(PODS_TARGET_SRCROOT)/name1/Classes/ReplaceMe.swift"
  ],
  "xcode": "13C100"
}
```

* Archive a project from Xcode and verify uploaded meta files, e.g. 


```
{
  "inputs": [],
  "generationCommit": "0df328768f1d0d40f659705d26786673c4201784",
  "pluginsKeys": {},
  "targetName": "name1",
  "platform": "iphoneos",
  "configuration": "Release",
  "rawFingerprint": "1e781b6d9df5f75605f60b14cc5b76be",
  "fileKey": "bab3ab4c1cb1328f0d6b83b318af7ff2",
  "dependencies": [
    "$(SRCROOT)/Target Support Files/name1/name1-dummy.m",
    "$(SRCROOT)/Target Support Files/name1/name1-prefix.pch",
    "$(BUILD_DIR)/Release-iphoneos/name1/name1.framework/Headers/name1-umbrella.h",
    "$(PODS_TARGET_SRCROOT)/name1/Classes/ReplaceMe.swift"
  ],
  "xcode": "13C100"
}
```

### Expected behavior

No absolute paths in the `dependencies` property
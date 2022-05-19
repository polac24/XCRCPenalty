
### Sample project for CocoaPods with nested dependencies

Steps to reproduce:
1. Call for a baseline Xcode:
 - `env DEVELOPER_DIR=/Applications/Xcode.app/Contents/Developer ./reproduce.sh` - with XCRemoteCache
 - `env DEVELOPER_DIR=/Applications/Xcode.app/Contents/Developer ./reproduce.sh 0` - without XCRemoteCache

2. Call for the other Xcode(s):
 - `env DEVELOPER_DIR=/Applications/Xcode-other.app/Contents/Developer ./reproduce.sh` - with XCRemoteCache
 - `env DEVELOPER_DIR=/Applications/Xcode-other.app/Contents/Developer ./reproduce.sh 0` - without XCRemoteCache


#### Results:

MacBook Pro M1 Max:

##### Results for Xcode 13.4:

* with XCRC: AVG 16.6s: `0m16.655s`, `0m15.908s`, `0m17.240s`
* without XCRC: AVG 14.5s: `0m14.444s`, `0m15.430s`, `0m14.751s`

XCRC penalty with 0% cache hit: +15%

##### Results for Xcode 13.2.1:

* with XCRC: AVG 18.9s: `0m18.499s`, `0m18.304s`, `0m20.017s`
* without XCRC: AVG 16.9s: `0m16.550s`, `0m17.201s`, `0m16.988s`

XCRC Penalty with 0% cache hit: +12%

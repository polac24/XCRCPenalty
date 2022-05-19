
### Sample project for XCRemoteCache penalty for 0% cache hit is achieved

TLDR; the penalty is between 12%-15%

### Scenario

The project builds `RxSwift` and `RxCocoa` locally and some "dummy" local project (negligible).

1. Build for a baseline Xcode:
 - `sudo xcode-select -s /Applications/Xcode.app/Contents/Developer`
 - `./reproduce.sh` - with XCRemoteCache (0% hit rate)
 - `./reproduce.sh 0` - without XCRemoteCache

2. Build for the other Xcode(s):
 - `sudo xcode-select -s /Applications/Xcode-other.app/Contents/Developer`
 - `./reproduce.sh` - with XCRemoteCache (0% hit rate)
 - `./reproduce.sh 0` - without XCRemoteCache


#### Results:

MacBook Pro M1 Max:

##### Results for Xcode 13.2.1 (baseline):

* with XCRC: AVG 18.9s: `0m18.499s`, `0m18.304s`, `0m20.017s`
* without XCRC: AVG 16.9s: `0m16.550s`, `0m17.201s`, `0m16.988s`

**XCRC Penalty with 0% cache hit: +12%**

##### Results for Xcode 13.4:

* with XCRC: AVG 16.6s: `0m16.655s`, `0m15.908s`, `0m17.240s`
* without XCRC: AVG 14.5s: `0m14.444s`, `0m15.430s`, `0m14.751s`

**XCRC penalty with 0% cache hit: +15%**

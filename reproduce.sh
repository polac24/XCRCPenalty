#!/bin/bash

## call ./reproduce.sh to run with XCRemoteCache but 0% hit rate
## call ./reproduce.sh 0 to run without XCRemoteCache - baseline

git remote add self .
git fetch self
git clean -xdf

# Restart local server
rm -rf /tmp/cache
nginx -s stop
nginx -c $PWD/nginx.conf 

## call to download XCRemoteCache
pod install

if [ "$1" != "0" ]; then
    # Fake support for XCRemoteCache - there will be 0% cache hit
    XCRC/xcprepare mark --configuration Debug --platform iphonesimulator
fi

pod install

## Build
rm -rf ./DD
time xcodebuild -workspace Proj.xcworkspace -scheme Proj -destination "generic/platform=iOS Simulator"  build  -derivedDataPath DD  > build.log 

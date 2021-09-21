#!/bin/bash
cd ios/
fastlane deploy_ios &
cd ../android
fastlane deploy_android &

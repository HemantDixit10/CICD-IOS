#!/bin/sh

#  ci_post_clone.sh
#  GitHubCICD
#
#  Created by tristate22 on 17.08.23.
#  

# Install CocoaPods using Homebrew.
sudo gem install cocoapods

# Install dependencies you manage with CocoaPods.

pod install

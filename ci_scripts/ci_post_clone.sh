#!/bin/sh

#  ci_post_clone.sh
#  GitHubCICD
#
#  Created by tristate22 on 17.08.23.
#  
cd ..

echo ">>> SETUP ENVIRONMENT"
#!/bin/sh
brew install git-lfs
brew install cocoapods
echo ">>> install Pods"

pod install

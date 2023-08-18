#!/bin/sh

#  ci_post_clone.sh
#  GitHubCICD
#
#  Created by tristate22 on 17.08.23.
#  
cd ..

echo ">>> SETUP ENVIRONMENT"
#!/bin/sh

brew install cocoapods
echo ">>> install Pods"

pod install

#brew install swift-package-list
echo ">>> swift-package-list"
if command -v swift-package-list &> /dev/null; then
    OUTPUT_PATH=$SOURCE_ROOT/$TARGETNAME
    swift-package-list generate "$PROJECT_FILE_PATH" --output-path "$OUTPUT_PATH" --requires-license
else
    echo "warning: swift-package-list not installed"
fi

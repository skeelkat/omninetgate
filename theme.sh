#!/bin/sh

# Define source and destination theme directories
SRC_DIR="/usr/local/opnsense/www/themes/cicada"
DEST_DIR="/usr/local/opnsense/www/themes/omninetgate"
IMAGE_DIR="$DEST_DIR/build/images"

# Create a copy of the Cicada theme
if [ -d "$SRC_DIR" ]; then
    cp -R "$SRC_DIR" "$DEST_DIR"
else
    echo "Source theme directory does not exist: $SRC_DIR"
    exit 1
fi

# Download and replace image files manually
fetch -o "$IMAGE_DIR/caret.png" "https://raw.githubusercontent.com/skeelkat/omninetgate/main/caret.png"
fetch -o "$IMAGE_DIR/default-logo.png" "https://raw.githubusercontent.com/skeelkat/omninetgate/main/default-logo.png"
fetch -o "$IMAGE_DIR/favicon.png" "https://raw.githubusercontent.com/skeelkat/omninetgate/main/favicon.png"
fetch -o "$IMAGE_DIR/icon-logo.png" "https://raw.githubusercontent.com/skeelkat/omninetgate/main/icon-logo.png"

echo "Theme successfully copied and images replaced."

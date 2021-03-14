#!/bin/sh


## VARS
PATH_TO_SCRIPT=$(pwd) 
PATH_TO_BUNDLE=/Volumes/CCC\ NAS\ TEMP
BUNDLE=Macintosh\ HD.sparsebundle
CURRENTDATE=$(date '+%Y-%m-%d_%H-%M-%S')
BUNDLE_NAME="BUNDLE_$CURRENTDATE.zip"

## COLORS
GREEN="\033[1;32m"
RESET="\033[0m"

## HELPERS
message () {
  echo "${GREEN} $1 $2 ${RESET}" # 1=emoji, 2=msg
}

## SCRIPTING

message "Compressing '$BUNDLE'..."
cd "$PATH_TO_BUNDLE"
zip -r "$BUNDLE_NAME" "$BUNDLE"
message "Done!"
echo ""

message "Removing old bundles..."
rm -rf bundle
mkdir bundle
message "Done!"
echo ""

message "Moving new bundle..."
mv "$BUNDLE_NAME" "./bundle/$BUNDLE_NAME"
message "Done!"
echo ""

message "Script exiting!"

exit 0
#http://www.cocoanetics.com/2012/07/you-dont-need-the-xcode-command-line-tools/
#RECEIPT_FILE=/var/db/receipts/com.apple.pkg.DeveloperToolsCLI.bom
#RECEIPT_PLIST=/var/db/receipts/com.apple.pkg.DeveloperToolsCLI.plist
 
RECEIPT_FILE=/var/db/receipts/com.apple.pkg.CLTools_Executables.bom
RECEIPT_PLIST=/var/db/receipts/com.apple.pkg.CLTools_Executables.plist
if [ ! -f "$RECEIPT_FILE" ]
then
  echo "Command Line Tools not installed."
  exit 1
fi
 
echo "Command Line Tools installed, removing ..."
 
# Need to be at root
cd /
 
# Remove files and dirs mentioned in the "Bill of Materials" (BOM)
lsbom -fls $RECEIPT_FILE | sudo xargs -I{} rm -r "{}"
 
# remove the receipt
sudo rm $RECEIPT_FILE
 
# remove the plist
sudo rm $RECEIPT_PLIST
 
echo "Done! Please restart XCode to have Command Line Tools appear as uninstalled."

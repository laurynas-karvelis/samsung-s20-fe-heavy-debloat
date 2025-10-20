# Ensure whitelist file exists
WHITELIST="./whitelist.txt"
if [ ! -f "$WHITELIST" ]; then
  echo "Error: $WHITELIST not found!"
  exit 1
fi

# Get all installed packages from the device
echo "Fetching installed packages..."
adb shell pm list packages | sed 's/package://' > all_packages.txt

# Loop through each package
while read -r pkg; do
  if grep -Fxq $pkg $WHITELIST; then
    echo "Keeping: $pkg"
  else
    echo "Uninstalling: $pkg"
    adb </dev/null shell pm uninstall -k --user 0 "$pkg"
  fi
done < all_packages.txt

echo "✅ Debloat process complete."
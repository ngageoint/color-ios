iphone_names=$(xcrun simctl list devices available --json | jq -r '.devices | to_entries[] | .value[] | select(.name | test("^iPhone [0-9]+")) | .name')
latest_iphone=$(echo "$iphone_names" | sort | tail -n 1)
echo "latest_iphone: $latest_iphone"
xcodebuild build -scheme Color -destination "platform=iOS Simulator,OS=latest,name=$latest_iphone"
xcodebuild test -scheme Color -destination "platform=iOS Simulator,OS=latest,name=$latest_iphone"

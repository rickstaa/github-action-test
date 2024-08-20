# Retrieve latest release tag
git fetch --tags
latest_tag=$(git tag -l "v*" | grep -E '^v[0-9]+\.[0-9]+\.[0-9]+-ai.[0-9]+$' | sort -V | tail -n 1)
echo "latest_tag=$latest_tag" >>"$GITHUB_OUTPUT"

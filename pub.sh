# This env's are set via your CI tool of choice:
#
export NPM_REGISTRY_URL_WITHOUT_PROTOCOL="https://docker-verdaccio-topkee-npm-registry.apps.v6fj.hk.topkee.top/"
export NPM_REGISTRY_TOKEN="8uUcUYYh5Sh4ktmtR+Yg7gO+cmLKxQqRqmgom/xV4Y8="

# This snippet is somewhere in your CI job:

cat << EOF > .npmrc
$NPM_REGISTRY_URL_WITHOUT_PROTOCOL:_authToken=$NPM_REGISTRY_TOKEN
EOF

# npm publish
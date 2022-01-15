#!/bin/bash
echo "Hello World"

curl https://keybase.io/codecovsecurity/pgp_keys.asc | gpg --no-default-keyring --keyring trustedkeys.gpg --import # One-time step

curl -Os https://uploader.codecov.io/latest/macos/codecov

curl -Os https://uploader.codecov.io/latest/macos/codecov.SHA256SUM

curl -Os https://uploader.codecov.io/latest/macos/codecov.SHA256SUM.sig

gpgv codecov.SHA256SUM.sig codecov.SHA256SUM

shasum -a 256 -c codecov.SHA256SUM

chmod +x codecov
./codecov -t 0315ab81-496d-4519-bf80-62015c40e3b2
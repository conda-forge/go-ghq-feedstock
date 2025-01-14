#!/usr/bin/env bash

set -o xtrace -o nounset -o pipefail -o errexit

go build -buildmode=pie -trimpath -o=${PREFIX}/bin/ghq -ldflags="-s -w"
go-licenses save . --save_path=license-files

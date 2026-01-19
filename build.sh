#!/bin/bash
set -euo pipefail

pushd tinygl
make
cp lib/* ../
popd

odin run odin-c-bindgen/src -- bindgen_tgl.sjson
odin run odin-c-bindgen/src -- bindgen_zbuffer.sjson

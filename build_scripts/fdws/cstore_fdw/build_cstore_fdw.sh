#!/bin/bash

git clone https://github.com/citusdata/cstore_fdw.git
cd cstore_fdw

# Lots of API breakage in pg12 due to the new access method API; really
# cstore_fdw should be an access method rather than FDW?
#
# More context: http://anzwix.com/a/PostgreSQL/Tableam:%20Add%20And%20Use%20Scan%20APIs
git apply /build_scripts/fdws/cstore_fdw/compile_on_pg12.patch

make
make install
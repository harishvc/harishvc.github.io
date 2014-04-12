#!/bin/sh
# Generate CSS from less
cd ..
lessc     less/bootstrap.less > css/bootstrap.css
lessc  -x less/bootstrap.less > css/bootstrap.min.css
#lessc  less/theme.less > css2/theme.css
#lessc  less/media.less > css2/media.css
#lessc  less/normalize.less > css2/normalize.css
#lessc  less/print.less > css2/print.css

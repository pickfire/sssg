#!/usr/bin/env mksh
# Usage: map.sh
source config.sh

cat > ${TARG}/sitemap.xml <<EOF
<?xml version="1.0" encoding="UTF-8"?><urlset>
$( (find ${TARG} -name '*.html' | sed "s|${TARG}|${SITE}|" | tee ${TARG}/urllist.txt) \
   | sed 's|^|<url><loc>|; s|$|</loc></url>|' | tr -d '\n')
</urlset>
EOF

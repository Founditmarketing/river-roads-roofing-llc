#!/bin/bash
set -e
cd /private/tmp/river-roads-roofing-llc

UA="Mozilla/5.0"

echo "=== Fetching et-cache CSS files ==="

# Page 5 (homepage) - note the HTTrack-mangled filenames
curl -s -A "$UA" -o "wp-content/et-cache/5/et-core-unified-5.min4854.css" "https://riverroadroofing.com/wp-content/et-cache/5/et-core-unified-5.min.css?ver=1766045734"
curl -s -A "$UA" -o "wp-content/et-cache/5/et-core-unified-tb-18110-tb-67-deferred-5.mineade.css" "https://riverroadroofing.com/wp-content/et-cache/5/et-core-unified-tb-18110-tb-67-deferred-5.min.css?ver=1766045735"

# Page 18178
curl -s -A "$UA" -o "wp-content/et-cache/18178/et-core-unified-18178.min.css" "https://riverroadroofing.com/wp-content/et-cache/18178/et-core-unified-18178.min.css?ver=1766046538"
curl -s -A "$UA" -o "wp-content/et-cache/18178/et-core-unified-tb-18110-tb-67-deferred-18178.min.css" "https://riverroadroofing.com/wp-content/et-cache/18178/et-core-unified-tb-18110-tb-67-deferred-18178.min.css?ver=1766046539"

# Page 18203
curl -s -A "$UA" -o "wp-content/et-cache/18203/et-core-unified-18203.min.css" "https://riverroadroofing.com/wp-content/et-cache/18203/et-core-unified-18203.min.css?ver=1766050444"
curl -s -A "$UA" -o "wp-content/et-cache/18203/et-core-unified-tb-18110-tb-67-deferred-18203.min.css" "https://riverroadroofing.com/wp-content/et-cache/18203/et-core-unified-tb-18110-tb-67-deferred-18203.min.css?ver=1766050444"

# Page 18220
curl -s -A "$UA" -o "wp-content/et-cache/18220/et-core-unified-18220.min.css" "https://riverroadroofing.com/wp-content/et-cache/18220/et-core-unified-18220.min.css?ver=1766115007"
curl -s -A "$UA" -o "wp-content/et-cache/18220/et-core-unified-tb-18110-tb-67-deferred-18220.min.css" "https://riverroadroofing.com/wp-content/et-cache/18220/et-core-unified-tb-18110-tb-67-deferred-18220.min.css?ver=1766115007"

# Page 18237
curl -s -A "$UA" -o "wp-content/et-cache/18237/et-core-unified-18237.min.css" "https://riverroadroofing.com/wp-content/et-cache/18237/et-core-unified-18237.min.css?ver=1766097576"
curl -s -A "$UA" -o "wp-content/et-cache/18237/et-core-unified-tb-18110-tb-67-deferred-18237.min.css" "https://riverroadroofing.com/wp-content/et-cache/18237/et-core-unified-tb-18110-tb-67-deferred-18237.min.css?ver=1766097577"

# Page 18245
curl -s -A "$UA" -o "wp-content/et-cache/18245/et-core-unified-18245.min.css" "https://riverroadroofing.com/wp-content/et-cache/18245/et-core-unified-18245.min.css?ver=1766097575"
curl -s -A "$UA" -o "wp-content/et-cache/18245/et-core-unified-tb-18110-tb-67-deferred-18245.min.css" "https://riverroadroofing.com/wp-content/et-cache/18245/et-core-unified-tb-18110-tb-67-deferred-18245.min.css?ver=1766097575"

# Page 18254
curl -s -A "$UA" -o "wp-content/et-cache/18254/et-core-unified-18254.min.css" "https://riverroadroofing.com/wp-content/et-cache/18254/et-core-unified-18254.min.css?ver=1766193809"
curl -s -A "$UA" -o "wp-content/et-cache/18254/et-core-unified-tb-18110-tb-67-deferred-18254.min.css" "https://riverroadroofing.com/wp-content/et-cache/18254/et-core-unified-tb-18110-tb-67-deferred-18254.min.css?ver=1766193809"

# Page 18277
curl -s -A "$UA" -o "wp-content/et-cache/18277/et-core-unified-18277.min.css" "https://riverroadroofing.com/wp-content/et-cache/18277/et-core-unified-18277.min.css?ver=1766097574"
curl -s -A "$UA" -o "wp-content/et-cache/18277/et-core-unified-tb-18110-tb-67-deferred-18277.min.css" "https://riverroadroofing.com/wp-content/et-cache/18277/et-core-unified-tb-18110-tb-67-deferred-18277.min.css?ver=1766097574"

echo "CSS files fetched. Sizes:"
wc -c wp-content/et-cache/*/et-core-*.css

echo ""
echo "=== Fetching JS files ==="

# Modula gallery JS
mkdir -p wp-content/plugins/modula-best-grid-gallery/assets/js/front
for js in fancybox.min.js isotope-packery.min.js isotope.min.js jquery-modula.min.js lazysizes.min.js modula-fancybox.min.js purify.min.js; do
  curl -s -A "$UA" -o "wp-content/plugins/modula-best-grid-gallery/assets/js/front/$js" "https://riverroadroofing.com/wp-content/plugins/modula-best-grid-gallery/assets/js/front/$js"
  echo "  $js: $(wc -c < "wp-content/plugins/modula-best-grid-gallery/assets/js/front/$js") bytes"
done

# Divi JS (clean names - subpages reference these without the HTTrack hash suffix)
curl -s -A "$UA" -o "wp-content/themes/Divi/core/admin/js/common.js" "https://riverroadroofing.com/wp-content/themes/Divi/core/admin/js/common.js"
curl -s -A "$UA" -o "wp-content/themes/Divi/core/admin/js/es6-promise.auto.min.js" "https://riverroadroofing.com/wp-content/themes/Divi/core/admin/js/es6-promise.auto.min.js"
curl -s -A "$UA" -o "wp-content/themes/Divi/core/admin/js/recaptcha.js" "https://riverroadroofing.com/wp-content/themes/Divi/core/admin/js/recaptcha.js"
curl -s -A "$UA" -o "wp-content/themes/Divi/includes/builder/feature/dynamic-assets/assets/js/jquery.fitvids.js" "https://riverroadroofing.com/wp-content/themes/Divi/includes/builder/feature/dynamic-assets/assets/js/jquery.fitvids.js"
curl -s -A "$UA" -o "wp-content/themes/Divi/includes/builder/feature/dynamic-assets/assets/js/sticky-elements.js" "https://riverroadroofing.com/wp-content/themes/Divi/includes/builder/feature/dynamic-assets/assets/js/sticky-elements.js"
curl -s -A "$UA" -o "wp-content/themes/Divi/js/scripts.min.js" "https://riverroadroofing.com/wp-content/themes/Divi/js/scripts.min.js"

echo "Divi JS fetched:"
wc -c wp-content/themes/Divi/core/admin/js/common.js wp-content/themes/Divi/core/admin/js/es6-promise.auto.min.js wp-content/themes/Divi/core/admin/js/recaptcha.js wp-content/themes/Divi/includes/builder/feature/dynamic-assets/assets/js/jquery.fitvids.js wp-content/themes/Divi/includes/builder/feature/dynamic-assets/assets/js/sticky-elements.js wp-content/themes/Divi/js/scripts.min.js

echo ""
echo "=== Fetching images ==="

# JPEG images (full size + thumbnails)
for img in \
  3210505363546274549.jpeg \
  3210505363546274549-480x640.jpeg \
  5083740828036668936.jpeg \
  5083740828036668936-480x640.jpeg \
  6636149474231659588.jpeg \
  6636149474231659588-480x640.jpeg \
  6804589376171797105.jpeg \
  6804589376171797105-480x640.jpeg \
  813040639271914804.jpeg \
  813040639271914804-480x640.jpeg; do
  curl -s -A "$UA" -o "wp-content/uploads/2025/06/$img" "https://riverroadroofing.com/wp-content/uploads/2025/06/$img"
  # Create .jpg copy
  jpg_name="${img%.jpeg}.jpg"
  cp "wp-content/uploads/2025/06/$img" "wp-content/uploads/2025/06/$jpg_name"
  echo "  $img: $(wc -c < "wp-content/uploads/2025/06/$img") bytes (+ .jpg copy)"
done

# PNG images
for img in \
  Untitled-design-1-1.png \
  Untitled-design-79-768x1024.png \
  Untitled-design-79.png \
  Untitled-design-79-480x640.png \
  Untitled-design-79-980x1307.png; do
  curl -s -A "$UA" -o "wp-content/uploads/2025/06/$img" "https://riverroadroofing.com/wp-content/uploads/2025/06/$img"
  echo "  $img: $(wc -c < "wp-content/uploads/2025/06/$img") bytes"
done

echo ""
echo "=== Fixing origin refs in CSS files ==="

# Fix absolute URLs in all fetched CSS files
find wp-content/et-cache -name "*.css" -exec sed -i '' \
  -e 's|https://riverroadroofing\.com/wp-content/|/wp-content/|g' \
  -e 's|https://riverroadroofing\.com/|/|g' \
  {} +

echo "CSS origin refs fixed."

echo ""
echo "=== Checking CSS files for image references ==="
grep -ohP 'url\([^)]*uploads/[^)]+\)' wp-content/et-cache/*/et-core-*.css 2>/dev/null | sort -u || echo "No image refs in CSS"

echo ""
echo "Done!"

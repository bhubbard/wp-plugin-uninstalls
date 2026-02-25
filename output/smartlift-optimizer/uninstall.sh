#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smartlift_cache_enable'
wp option delete 'smartlift_webp_enable'
wp option delete 'smartlift_lazy_enable'
wp option delete 'smartlift_defer_js'
wp option delete 'smartlift_minify_html'


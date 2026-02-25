#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'brenwpcache_debug_log'
wp option delete 'brenwpcache_hmac_key'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_brenwpcache_notice_%' OR option_name LIKE '_site_transient_brenwpcache_notice_%'"
wp transient delete 'brenwpcache_cache_size'


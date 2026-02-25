#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpwwoo_whitelisted_ids'
wp option delete 'woocommerce_coming_soon'
wp option delete 'woocommerce_store_pages_only'

# Delete Transients
wp transient delete 'wpwwoo_cached_urls'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpwwoo_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpwwoo_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpwwoo_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpwwoo_dismissed_notices'"

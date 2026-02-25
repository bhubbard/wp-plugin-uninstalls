#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mas_wc_brands_plugin_styles'
wp option delete 'mas_wc_brands_brand_taxonomy'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'wc_term_counts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"

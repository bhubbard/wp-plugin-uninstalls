#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_always_show_stock'
wp option delete 'wc_show_stock_where'
wp option delete 'bpwcss_installed'
wp option delete 'bvsclose'
wp option delete 'bpwss-review-dismiss'
wp option delete 'woostock_show_detailed_admin'

# Delete Transients
wp transient delete 'bpwss-later-dismiss'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woostock_display_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woostock_display_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woostock_display_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woostock_display_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"

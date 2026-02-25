#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woo_cs_options'
wp option delete 'wp_chameleon'
wp option delete 'wp_chameleon_background'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%qrcode_hash'"
wp option delete 'wpdocs_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_coming_soon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_coming_soon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_coming_soon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_coming_soon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_coming_soon_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_coming_soon_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_coming_soon_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_coming_soon_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_coming_soon_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_coming_soon_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_coming_soon_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_coming_soon_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcs_stock_threshold'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcs_stock_threshold'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcs_stock_threshold'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcs_stock_threshold'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcs_stock_based'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcs_stock_based'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcs_stock_based'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcs_stock_based'"

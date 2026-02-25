#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-cambio'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_bkops'"
wp option delete 'malinf_apival'
wp option delete 'malinf_bkops'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'malinf_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'malinf_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'malinf_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'malinf_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_min_variation_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_min_variation_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_min_variation_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_min_variation_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_max_variation_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_max_variation_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_max_variation_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_max_variation_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_min_variation_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_min_variation_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_min_variation_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_min_variation_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_max_variation_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_max_variation_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_max_variation_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_max_variation_regular_price'"

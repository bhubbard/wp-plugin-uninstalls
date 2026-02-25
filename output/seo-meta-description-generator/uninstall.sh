#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smg_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smg_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smg_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smg_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smg_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"

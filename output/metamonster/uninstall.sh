#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'metamonster_home_title'
wp option delete 'metamonster_home_description'
wp option delete 'rank-math-options-titles'
wp option delete 'autodescription-site-settings'
wp option delete 'metamonster_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_genesis_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_genesis_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_genesis_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_genesis_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_metamonster_page_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_metamonster_page_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_metamonster_page_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_metamonster_page_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_genesis_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_genesis_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_genesis_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_genesis_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_metamonster_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_metamonster_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_metamonster_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_metamonster_meta_description'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'roundups_api_key'
wp option delete 'roundups_latest_articles'
wp option delete 'roundups_flush_rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rank_math_description'"

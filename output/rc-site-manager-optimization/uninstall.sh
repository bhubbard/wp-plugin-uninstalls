#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'rank-math-options-titles'
wp option delete 'wpseo_titles'
wp option delete 'rc_sm_plugin_version'
wp option delete 'wp_rocket_settings'

# Clear Cron Jobs
wp cron event delete 'rc_sm_cache_rules_hourly_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpseo_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpseo_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpseo_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpseo_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpseo_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpseo_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpseo_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpseo_noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"

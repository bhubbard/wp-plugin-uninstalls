#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autoblogger_token_status'
wp option delete 'autoblogger_last_token_check'
wp option delete 'autoblogger_last_sync'
wp option delete 'autoblogger_settings'

# Clear Cron Jobs
wp cron event delete 'autoblogger_fetch_posts_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_analysis_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_analysis_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_analysis_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_analysis_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_genesis_title_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_genesis_title_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_genesis_title_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_genesis_title_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_metaseo_meta_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_metaseo_meta_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_metaseo_meta_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_metaseo_meta_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta_description'"

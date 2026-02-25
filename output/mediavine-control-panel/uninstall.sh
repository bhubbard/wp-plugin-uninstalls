#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mv_mcp_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'MVCP_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mcp_%'"

# Clear Cron Jobs
wp cron event delete 'get_ad_text_cron_event'
wp cron event delete 'mcp_verify_ads_txt_health_event'
wp cron event delete 'mcp_offering_check_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mv_category_video_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mv_category_video_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mv_category_video_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mv_category_video_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprm_video_embed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprm_video_embed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprm_video_embed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprm_video_embed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video_url'"

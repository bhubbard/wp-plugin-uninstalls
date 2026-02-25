#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gcs_request_divisor'
wp option delete 'gcs_social'
wp option delete 'gcs_themify'
wp option delete 'gcs_3d_chart'
wp option delete 'facebook_referer'
wp option delete 'twitter_referer'
wp option delete 'google_referer'
wp option delete 'linkedin_referer'
wp option delete 'pinterest_referer'
wp option delete 'scoop_referer'
wp option delete 'qzone_referer'
wp option delete 'weibo_referer'
wp option delete 'vk_referer'
wp option delete 'gcs_personal_referers'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_referer'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gcs_hit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gcs_hit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gcs_hit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gcs_hit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gcs_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gcs_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gcs_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gcs_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gcs_total_known'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gcs_total_known'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gcs_total_known'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gcs_total_known'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'gcs_total_known_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'gcs_total_known_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'gcs_total_known_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'gcs_total_known_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gcs_total_unknown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gcs_total_unknown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gcs_total_unknown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gcs_total_unknown'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'gcs_total_unknown_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'gcs_total_unknown_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'gcs_total_unknown_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'gcs_total_unknown_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gcs_total_known_disconnected'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gcs_total_known_disconnected'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gcs_total_known_disconnected'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gcs_total_known_disconnected'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'gcs_social-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'gcs_social-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'gcs_social-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'gcs_social-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gcs_internal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gcs_internal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gcs_internal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gcs_internal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gcs_referer_home'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gcs_referer_home'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gcs_referer_home'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gcs_referer_home'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gcs_sticky_home'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gcs_sticky_home'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gcs_sticky_home'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gcs_sticky_home'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'gcs_organics-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'gcs_organics-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'gcs_organics-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'gcs_organics-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'gcs_category_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'gcs_category_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'gcs_category_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'gcs_category_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'gcs_browser_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'gcs_browser_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'gcs_browser_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'gcs_browser_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gcs_total_queries'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gcs_total_queries'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gcs_total_queries'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gcs_total_queries'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gcs_total_memory'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gcs_total_memory'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gcs_total_memory'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gcs_total_memory'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'gcs_total_loadtime_when_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'gcs_total_loadtime_when_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'gcs_total_loadtime_when_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'gcs_total_loadtime_when_%'"

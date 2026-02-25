#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wplp_settings'
wp option delete 'has_views_count_post_meta_key'
wp option delete '_wplp_onceLoad'
wp option delete 'wplp_category_image'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_jureview_installation_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_jufeedback_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_disallow_feedback'"
wp option delete 'ju_user_token'

# Clear Cron Jobs
wp cron event delete 'wplp_update_post_views'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wplp_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wplp_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wplp_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wplp_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcufpn_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcufpn_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcufpn_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcufpn_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wplp_notice_dismissed_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wplp_notice_dismissed_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wplp_notice_dismissed_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wplp_notice_dismissed_time'"

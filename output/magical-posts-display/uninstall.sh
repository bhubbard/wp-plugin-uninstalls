#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mgpd_update_notice_1_2_53'
wp option delete 'mgpd_pro_info_text1'
wp option delete 'mgposte_install_date'
wp option delete 'mgelhide9'
wp option delete 'has_magical_posts_pro'
wp option delete 'mgposte_plugin_activated'
wp option delete 'mgposte_latest_activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mpd_my_post_viewed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mpd_my_post_viewed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mpd_my_post_viewed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mpd_my_post_viewed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mp_post_post_viewed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mp_post_post_viewed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mp_post_post_viewed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mp_post_post_viewed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mp_post_week_viewed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mp_post_week_viewed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mp_post_week_viewed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mp_post_week_viewed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mp_post_view_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mp_post_view_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mp_post_view_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mp_post_view_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"

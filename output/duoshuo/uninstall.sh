#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'duoshuo_%'"
wp option delete 'duoshuo_connect_failed'
wp option delete 'duoshuo_secret'
wp option delete 'duoshuo_synchronized'
wp option delete 'duoshuo_notice'
wp option delete 'duoshuo_sync_lock'
wp option delete 'duoshuo_short_name'
wp option delete 'wordpress_api_key'
wp option delete 'dashboard_widget_options'
wp option delete 'duoshuo_comments_wrapper_intro'
wp option delete 'duoshuo_seo_enabled'
wp option delete 'duoshuo_comments_wrapper_outro'
wp option delete 'disable_fsockopen'
wp option delete 'duoshuo_postpone_print_scripts'
wp option delete 'duoshuo_cc_fix'
wp option delete 'duoshuo_sync_pingback_and_trackback'
wp option delete 'duoshuo_theme'
wp option delete 'duoshuo_api_hostname'
wp option delete 'duoshuo_cron_sync_enabled'
wp option delete 'duoshuo_style_patch'
wp option delete 'duoshuo_social_login_enabled'
wp option delete 'duoshuo_debug'
wp option delete 'duoshuo_widget_recent_comments'
wp option delete 'duoshuo_widget_top_threads'
wp option delete 'duoshuo_widget_recent_visitors'
wp option delete 'duoshuo_widget_qqt_follow'

# Clear Cron Jobs
wp cron event delete 'duoshuo_sync_log_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'duoshuo_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'duoshuo_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'duoshuo_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'duoshuo_access_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'duoshuo_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'duoshuo_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'duoshuo_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'duoshuo_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'duoshuo_thread_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'duoshuo_thread_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'duoshuo_thread_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'duoshuo_thread_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'duoshuo_parent_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'duoshuo_parent_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'duoshuo_parent_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'duoshuo_parent_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'duoshuo_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'duoshuo_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'duoshuo_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'duoshuo_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'duoshuo_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'duoshuo_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'duoshuo_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'duoshuo_status'"

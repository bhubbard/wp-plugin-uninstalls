-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('duoshuo_connect_failed', 'duoshuo_secret', 'duoshuo_synchronized', 'duoshuo_notice', 'duoshuo_sync_lock', 'duoshuo_short_name', 'wordpress_api_key', 'dashboard_widget_options', 'duoshuo_comments_wrapper_intro', 'duoshuo_seo_enabled', 'duoshuo_comments_wrapper_outro', 'disable_fsockopen', 'duoshuo_postpone_print_scripts', 'duoshuo_cc_fix', 'duoshuo_sync_pingback_and_trackback', 'duoshuo_theme', 'duoshuo_api_hostname', 'duoshuo_cron_sync_enabled', 'duoshuo_style_patch', 'duoshuo_social_login_enabled', 'duoshuo_debug', 'duoshuo_widget_recent_comments', 'duoshuo_widget_top_threads', 'duoshuo_widget_recent_visitors', 'duoshuo_widget_qqt_follow');
DELETE FROM wp_options WHERE option_name LIKE 'duoshuo_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('duoshuo_access_token', 'duoshuo_user_id', 'duoshuo_thread_id', 'duoshuo_parent_id', 'duoshuo_post_id', 'duoshuo_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('duoshuo_access_token', 'duoshuo_user_id', 'duoshuo_thread_id', 'duoshuo_parent_id', 'duoshuo_post_id', 'duoshuo_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('duoshuo_access_token', 'duoshuo_user_id', 'duoshuo_thread_id', 'duoshuo_parent_id', 'duoshuo_post_id', 'duoshuo_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('duoshuo_access_token', 'duoshuo_user_id', 'duoshuo_thread_id', 'duoshuo_parent_id', 'duoshuo_post_id', 'duoshuo_status');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', '301_redirects', 'ta_link_prefix_custom', 'ta_no_follow', 'ta_link_redirect_type', 'ta_pass_query_str', 'url_shortify_do_activation_redirect', 'url_shortify_report_emails', 'url_shortify_email_report_day', 'url_shortify_email_report_time', 'kc_us_settings', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'kc_plugins_info');
DELETE FROM wp_options WHERE option_name LIKE '%_dismissed';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE 'geoip_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ta_no_follow', '_ta_redirect_type', '_ta_pass_query_str', '_ta_link_expire_date', '_ta_destination_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ta_no_follow', '_ta_redirect_type', '_ta_pass_query_str', '_ta_link_expire_date', '_ta_destination_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ta_no_follow', '_ta_redirect_type', '_ta_pass_query_str', '_ta_link_expire_date', '_ta_destination_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ta_no_follow', '_ta_redirect_type', '_ta_pass_query_str', '_ta_link_expire_date', '_ta_destination_url');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_time';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_time';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_time';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_time';


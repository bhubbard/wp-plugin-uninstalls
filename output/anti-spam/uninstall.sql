-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('titan_plugin_version', 'titan_backup_store_data', 'titan_backup_status', 'titan_audit_hidden_items', 'titan_audit_results', 'titan_cache_tip_dismissed', 'titan_bruteforce_lockouts', 'titan_bruteforce_logged', 'titan_backup_store', 'titan_current_archive', 'titan_backup_total_files', 'titan_backup_file_list', 'titan_backup_list', 'titan_antispam_mode', 'titan_comment_form_privacy_notice', 'titan_advanced_spam_filter', 'titan_save_spam_comments', 'antispam_stats', 'titan_bruteforce_blacklist_ips', 'titan_bruteforce_blacklist_usernames', 'titan_bruteforce_gdpr', 'titan_bruteforce_retries_valid', 'titan_bruteforce_retries', 'titan_bruteforce_minutes_lockout', 'titan_bruteforce_whitelist_ips', 'titan_bruteforce_whitelist_usernames', 'titan_bruteforce_allowed_retries', 'titan_bruteforce_valid_duration', 'titan_bruteforce_lockouts_total', 'titan_bruteforce_set_default_options', 'titan_bruteforce_enabled', 'titan_strong_password', 'titan_schedule_backup', 'titan_remove_old_data', 'titan_backup_files_per_iteration', 'titan_strong_password_min_role', 'titan_protect_author_get', 'titan_remove_x_pingback', 'titan_remove_html_comments', 'titan_remove_meta_generator', 'titan_remove_js_version', 'titan_remove_style_version', 'titan_complete_uninstall', 'titan_strict_https', 'titan_setup_wizard', 'titan_remove_version_exclude', 'themeisle_sdk_notifications', 'otter_reference_key', 'optimole_reference_key', 'rop_reference_key');
DELETE FROM wp_options WHERE option_name IN ('neve_reference_key', 'hyve_reference_key', 'wp_full_pay_reference_key', 'feedzy_reference_key', 'themeisle_sdk_promotions_otter', 'titan_spam_actions_scheduled', 'wtitan_premium_version_incompatible', 'titan_audit_results', 'update_plugins', 'update_themes', 'wantispam_stats_cache', 'themeisle_sdk_cache_token', 'themeisle_sdk_feed_items', 'themeisle_sdk_products', 'tsk_attachment_count', 'tsk_posts_count', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%_logger_flag';
DELETE FROM wp_options WHERE option_name LIKE 'titan_%';
DELETE FROM wp_options WHERE option_name LIKE '%_install';
DELETE FROM wp_options WHERE option_name LIKE '%_license_data';
DELETE FROM wp_options WHERE option_name LIKE '%_license_status';
DELETE FROM wp_options WHERE option_name LIKE '%_license_plan';
DELETE FROM wp_options WHERE option_name LIKE '%_failed_checks';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE 'ti_plugin_info_%';
DELETE FROM wp_options WHERE option_name LIKE '%act_err';
DELETE FROM wp_options WHERE option_name LIKE '%_license_data';
DELETE FROM wp_options WHERE option_name LIKE 'ti_theme_info_%';
DELETE FROM wp_options WHERE option_name LIKE '%_warning_rollback';
DELETE FROM wp_options WHERE option_name LIKE 'ti_sdk_pause_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_titan_spam_filtered', '_titan_spam_reason', '_titan_spam_date', 'titan_password_change_required', 'titan_last_password_change', 'titan-password-updated', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_usermeta WHERE meta_key IN ('_titan_spam_filtered', '_titan_spam_reason', '_titan_spam_date', 'titan_password_change_required', 'titan_last_password_change', 'titan-password-updated', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_termmeta WHERE meta_key IN ('_titan_spam_filtered', '_titan_spam_reason', '_titan_spam_date', 'titan_password_change_required', 'titan_last_password_change', 'titan-password-updated', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_titan_spam_filtered', '_titan_spam_reason', '_titan_spam_date', 'titan_password_change_required', 'titan_last_password_change', 'titan-password-updated', 'themeisle_sdk_dismissed_notice_black_friday');


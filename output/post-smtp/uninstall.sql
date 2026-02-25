-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('postman_options', 'post_smtp_mobile_app_connection', 'post_smtp_use_from_main_site', 'postman_dashboard_ad', 'mainwp_child_pubkey', 'mainwp_child_siteid', 'post_smtp_server_url', 'ps_dismissed_mobile_notice', 'c2c_configure_smtp', 'cimy_swift_smtp_options', 'swpsmtp_options', 'wp_smtp_options', 'post_smtp_clean_diagnostic_report_data', 'post_smtp_diagnostic_report_data', 'postman_rat', 'postman_db_version', 'ps_migrate_logs', 'post_smtp_pro', '_transient__mailster_send_period_timeout', '_transient__mailster_send_period', 'postman_auth_token', 'post_smtp_gmail_auth_url', 'postman_release_version', 'postman_dismiss_donation', 'postman_state', 'postman_stats', 'postman_session', 'ps_hide_less_secure', 'postman_office365_oauth', 'post_smtp_office365_auth_url', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'post_smtp_auth_nonce', 'ps_dismiss_update_notice', 'sendpulse_token', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count', 'ps-skip-bfcm', 'post_smtp_skip_banner', 'ps_rat_has_sent', '_post_activation_redirect', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers');


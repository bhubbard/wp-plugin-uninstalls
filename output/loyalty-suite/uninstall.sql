-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('loyalty_suite_account_page_hide', 'loyalty_suite_achievement_style', 'loyalty_suite_challenge_style', 'loyalty_suite_admin_notifications', 'loyalty_suite_notification_new_submission', 'loyalty_suite_rank_style', 'loyalty_suite_share_page_id', 'loyalty_suite_account_page_place', 'rewrite_rules', 'loyalty_suite_account_page_name', 'loyalty_suite_account_page_custom', 'loyalty_suite_colors', 'loyalty_suite_account_page_redirect_url', 'loyalty_suite_db_version', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'loyalty_suite_routes_config', 'loyalty_suite_routes_visibility', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_style';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('loyalty_suite_unseen_notifications', 'first_name', 'nickname', 'last_name', 'usage_limit_per_user', 'usage_limit', 'usage_count', 'date_expires', 'loyalty-suite-default-page', 'loyalty-suite-share-page');
DELETE FROM wp_usermeta WHERE meta_key IN ('loyalty_suite_unseen_notifications', 'first_name', 'nickname', 'last_name', 'usage_limit_per_user', 'usage_limit', 'usage_count', 'date_expires', 'loyalty-suite-default-page', 'loyalty-suite-share-page');
DELETE FROM wp_termmeta WHERE meta_key IN ('loyalty_suite_unseen_notifications', 'first_name', 'nickname', 'last_name', 'usage_limit_per_user', 'usage_limit', 'usage_count', 'date_expires', 'loyalty-suite-default-page', 'loyalty-suite-share-page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('loyalty_suite_unseen_notifications', 'first_name', 'nickname', 'last_name', 'usage_limit_per_user', 'usage_limit', 'usage_count', 'date_expires', 'loyalty-suite-default-page', 'loyalty-suite-share-page');


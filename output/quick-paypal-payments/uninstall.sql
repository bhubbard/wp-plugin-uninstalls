-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quick-paypal-payments-settings-1', 'quick-paypal-payments-settings-2', 'qpp_message', 'qpp_messageoptions', 'qpp_setup', 'qpp_curr', 'qpp_email', 'qpp_ipn', 'qpp_mailinglist', 'qpp_sandbox', 'qpp_screen_messages', 'qpp_key', 'qpp_legacy_free', 'qpp_licence_generated', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'qpp_messages%';
DELETE FROM wp_options WHERE option_name LIKE 'qpp_options%';
DELETE FROM wp_options WHERE option_name LIKE 'qpp_send%';
DELETE FROM wp_options WHERE option_name LIKE 'qpp_style%';
DELETE FROM wp_options WHERE option_name LIKE 'qpp_error%';
DELETE FROM wp_options WHERE option_name LIKE 'qpp_multiples%';
DELETE FROM wp_options WHERE option_name LIKE 'qpp_coupon%';
DELETE FROM wp_options WHERE option_name LIKE 'qpp_address%';
DELETE FROM wp_options WHERE option_name LIKE 'qpp_autoresponder%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wfea_dismissed_notices', 'qpp_dismissed_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('wfea_dismissed_notices', 'qpp_dismissed_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('wfea_dismissed_notices', 'qpp_dismissed_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wfea_dismissed_notices', 'qpp_dismissed_notices');


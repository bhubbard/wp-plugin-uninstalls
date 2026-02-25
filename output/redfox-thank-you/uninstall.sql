-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_guest_checkout', 'redfox_thank_you_settings', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'redfox_thank_you_page_id', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_redfox_thank_you_use_custom_failed_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('_redfox_thank_you_use_custom_failed_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('_redfox_thank_you_use_custom_failed_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_redfox_thank_you_use_custom_failed_page');


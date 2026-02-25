-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_pio_stripe_bacs_settings', 'btbts_settings', 'btbts_license_key', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'btbts_temp_data', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pio_stripe_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pio_stripe_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pio_stripe_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pio_stripe_data');


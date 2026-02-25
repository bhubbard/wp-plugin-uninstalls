-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ccwc_hide_save_cart_notice', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'woocommerce_coinbase_commerce_gateway_settings', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');


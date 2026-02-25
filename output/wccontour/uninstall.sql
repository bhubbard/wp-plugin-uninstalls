-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'wccon_flushed', 'wccon_settings', 'woocommerce_currency_pos', 'wccon_db_version', 'woocommerce_db_version', 'woocommerce_tax_display_shop', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter');


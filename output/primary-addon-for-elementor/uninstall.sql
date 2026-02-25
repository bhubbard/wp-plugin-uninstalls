-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_disable_color_schemes', 'elementor_disable_typography_schemes', 'pafe_bw_settings', 'pafe_pw_settings', 'woocommerce_hide_out_of_stock_items', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('total_sales');
DELETE FROM wp_usermeta WHERE meta_key IN ('total_sales');
DELETE FROM wp_termmeta WHERE meta_key IN ('total_sales');
DELETE FROM wp_commentmeta WHERE meta_key IN ('total_sales');


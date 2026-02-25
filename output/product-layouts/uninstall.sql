-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpte_pl_settings', 'WPTE_wpl_installed', 'WPTE_wpl_version', 'WPTE_wpl_activation_redirect', 'wpte_google_font', 'woocommerce_weight_unit', 'woocommerce_dimensions_unit', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'get_wpte_wpl_admin_menu', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_stock', '_stock_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_stock', '_stock_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_stock', '_stock_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_stock', '_stock_status');


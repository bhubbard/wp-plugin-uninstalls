-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_elementor_global_css', '_elementor_assets_data', 'elementor-custom-breakpoints-files', 'woocommerce_force_ssl_checkout', 'fs_accounts', 'fs_dbg_accounts', 'fs_active_plugins', 'fs_api_cache', 'fs_dbg_api_cache', 'fs_debug_mode', 'cron');


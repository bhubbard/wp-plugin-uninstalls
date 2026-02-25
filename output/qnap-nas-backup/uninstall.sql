-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_elementor_global_css', 'elementor-custom-breakpoints-files', 'fs_accounts', 'fs_dbg_accounts', 'fs_active_plugins', 'fs_api_cache', 'fs_dbg_api_cache', 'fs_debug_mode');


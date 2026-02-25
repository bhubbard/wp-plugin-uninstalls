-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wt_mgdp_admin_modules', 'wt_mgdp_cron_settings', 'wp_mgdp_log_id', 'wt_mgdp_cadvanced_settings', 'wt_mgdp_advanced_import_settings', 'wt_mgdp_options');


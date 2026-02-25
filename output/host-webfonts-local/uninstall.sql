-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('omgf_settings', 'settings_errors', 'omgf_pro_run_google_fonts_checker', 'update_plugins');


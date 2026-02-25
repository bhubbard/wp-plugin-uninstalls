-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('speedix_settings', 'speedix_setup_complete', 'speedix_reflection_cache', 'speedix_php_runtime', 'speedix_db_version', 'speedix_settings_version', 'rewrite_rules', 'speedix_site_health_scan', 'speedix_memory_warning', 'speedix_overload', 'speedix_redirect_to_setup', 'speedix_calibrate_token', 'speedix_calibration_data', 'speedix_wizard_preset', 'speedix_calibration');


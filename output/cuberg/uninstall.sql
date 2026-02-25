-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cuberg_status', 'cuberg_global_settings', 'cuberg_config', 'activate_cuberg');


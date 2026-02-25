-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('st_settings_extended', 'st_settings_template', 'st_settings_pg_dashboard');


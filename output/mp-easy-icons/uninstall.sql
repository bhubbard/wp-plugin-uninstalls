-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mp_core_theme_redirect_after_install');
DELETE FROM wp_options WHERE option_name LIKE '%_license_key';
DELETE FROM wp_options WHERE option_name LIKE 'mp_core_plugin_checker_%';
DELETE FROM wp_options WHERE option_name LIKE '%_license_status_valid';


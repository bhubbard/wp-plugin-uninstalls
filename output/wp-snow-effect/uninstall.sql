-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_snow_effect_admin_notices', 'wpse_no_bug', 'wp_snow_effect_activation_date');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';


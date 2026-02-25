-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpgmp_settings', 'wpgmp_location_extrafields', 'weplugins_notification', 'wpgmp_integrations_data', 'wpgmp_current_csv', 'op_activated', 'wpgmp_language', 'wpgmp_api_key', 'wpgmp_scripts_place', 'wpgmp_allow_meta', 'wpgmp_scripts_minify', 'wpgmp_version');
DELETE FROM wp_options WHERE option_name LIKE 'fc_%';
DELETE FROM wp_options WHERE option_name LIKE '%_latest_version';
DELETE FROM wp_options WHERE option_name LIKE '%-fc-styles';


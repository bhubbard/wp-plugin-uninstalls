-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('is_ninja_addon', 'is_gravity_addon', 'is_connect_email', 'x-auth-token', 'is_op_array', 'get_brandkit_name', 'is_app_settings_url', 'is_api_settings_url', 'is_syc_settings_url', 'intellasphere_db_version');


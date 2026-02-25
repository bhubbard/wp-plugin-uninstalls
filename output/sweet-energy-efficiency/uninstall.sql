-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wal_checkbox_enable_winterlock_dash_styles', 'see_db_version', 'sweet-energy-efficiency-menuitems', 'sweet-energy-efficiency-submenuitems', 'see_allowed_admins', 'see_allowed_roles', 'see_clickatell_one_api_key', 'see_clickatell_http_api_key', 'see_smsapicom_http_api_key', 'see_smsto_api_key', 'winter_mvc_active_plugins');


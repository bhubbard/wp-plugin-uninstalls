-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('myanalytics_setting_use_webmaster_tools', 'myanalytics_setting_code_id', 'myanalytics_setting_code', 'myanalytics_setting_code_letter', 'myanalytics_setting_message', 'myanalytics_setting_message_dnt', 'myanalytics_setting_message_decline');


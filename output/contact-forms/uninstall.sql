-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('accua_form_api_keys', 'accua_forms_avail_fields', 'accua_forms_saved_forms', 'accua_forms_trash_forms', 'accua_forms_default_form_data', 'accua_forms_default_file_field_data', 'accua_forms_lastid', 'accua_forms_default_captcha_field_data', 'accua_forms_default_analytics_data', 'accua_forms_anonymize_ip_data', 'accua_forms_db_version');
DELETE FROM wp_options WHERE option_name LIKE 'accuaformsub_%';


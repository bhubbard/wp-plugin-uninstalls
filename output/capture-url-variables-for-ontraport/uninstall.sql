-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oap_utm_plugin_link_support_link', 'oap_utm_plugin_link_license_link', 'oap_utm_custom_extra_fields', 'oap_utm_plugin_authenticated', 'oap_utm_license_key', 'oap-utm_message', 'itmooti-utm_message', 'oap_utm_api_version', 'oap_utm_app_id', 'oap_utm_api_key', 'oap_utm_extra_fields', 'oap_utm_fields', 'oap_utm_form_ids', 'oap_utm_user_forms');
DELETE FROM wp_options WHERE option_name LIKE 'utm_fields_custom_%';
DELETE FROM wp_options WHERE option_name LIKE 'oap_utm_form_id_%';


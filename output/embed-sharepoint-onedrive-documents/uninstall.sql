-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mo_sps_user_email_automatic_connection', 'mo_sps_user_upn_automatic_connection', 'mo_sps_user_name_automatic_connection', 'mo_sps_admin_email', 'mo_sps_admin_password', 'mo_sps_admin_customer_key', 'mo_sps_admin_api_key', 'mo_sps_customer_token', 'mo_sps_admin_phone', 'mo_sps_verify_customer', 'mo_sps_test_connection_status', 'mo_sps_test_connection_user_details', 'mo_sps_refresh_token', 'mo_sps_auth_code', 'mo_sps_registration_status', 'copilot_search_data_source', 'mo_sps_cloud_connector', 'mo_saml_admin_email', 'mo_sps_application_config', 'mo_sps_feedback_config', 'mo_sps_notice_message', 'mo_sps_all_sites', 'mo_sps_plugin_migration_completed', 'mo_copilot_notice_dismissed_until');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mo_sps_auth_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('mo_sps_auth_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('mo_sps_auth_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mo_sps_auth_code');


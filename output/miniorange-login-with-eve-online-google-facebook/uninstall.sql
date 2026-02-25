-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('host_name', 'mo_oauth_client_new_registration', 'mo_oauth_admin_email', 'mo_oauth_client_admin_phone', 'mo_oauth_client_admin_customer_key', 'mo_oauth_setup_wizard_app', 'mo_oauth_apps_list', 'mo_oauth_client_custom_token_endpoint_no_csecret', 'mo_oauth_client_disable_authorization_header', 'mo_oauth_attr_name_list', 'mo_oauth_client_notice_messages', 'mo_attr_option', 'mo_oauth_login_settings_option', 'mo_discovery_validation', 'mo_existing_app_flow', 'mo_debug_check', 'mo_debug_enable', 'mo_oauth_debug', 'mo_oauth_client_show_mo_server_message', 'mo_oauth_client_verify_customer', 'mo_oauth_client_admin_api_key', 'mo_rest_api_plugin_adv_notice_dismissed', 'mo_rest_api_plugin_adv_notice_dismissed_time', 'mo_adv_rest_api_security_status', 'message', 'mo_ajax_scopes_test', 'mo_ajax_scopes_test_2_', 'mo_ajax_scopes_test_3', 'mo_ajax_scopes_test_4', 'mo_ajax_scopes_test_5', 'mo_oc_valid_discovery_ep', 'mo_oauth_admin_fname', 'mo_oauth_admin_lname', 'mo_oauth_admin_company', 'mo_debug_time', 'mo_oauth_email_verification_option_initialized', 'mo_oauth_icon_width', 'mo_oauth_icon_height', 'mo_oauth_icon_margin', 'mo_oauth_icon_configure_css', 'mo_oauth_client_new_customer', 'mo_oauth_client_customer_token', 'mo_oauth_client_registration_status', 'mo_oauth_log', 'mo_oauth_client_show_rest_api_message', 'mo_oauth_demo_creds', 'mo_oauth_message', 'password', 'mo_oauth_authorizations', 'mo_oauth_set_val');
DELETE FROM wp_options WHERE option_name IN ('mo_oauth_transactionId', 'mo_oauth_activation_time', 'mo_oauth_login_icon_space', 'mo_oauth_login_icon_custom_width', 'mo_oauth_login_icon_custom_height', 'mo_oauth_login_icon_custom_size', 'mo_oauth_login_icon_custom_color', 'mo_oauth_login_icon_custom_boundary');
DELETE FROM wp_options WHERE option_name LIKE 'mo_ajax_scopes_test_1_%';
DELETE FROM wp_options WHERE option_name LIKE '%_scope';
DELETE FROM wp_options WHERE option_name LIKE '%_client_id';
DELETE FROM wp_options WHERE option_name LIKE '%_client_secret';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers');


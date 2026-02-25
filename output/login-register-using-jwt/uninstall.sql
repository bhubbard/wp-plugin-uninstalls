-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mo_jwt_demo_creds', 'mo_jwt_admin_email', 'mo_jwt_config_settings', 'mo_jwt_host_name', 'mo_jwt_admin_phone', 'mo_verify_customer', 'mo_jwt_admin_customer_key', 'mo_jwt_admin_api_key', 'mo_jwt_customer_token', 'mo_jwt_new_customer', 'message', 'mo_jwt_new_registration', 'mo_jwt_registration_status');


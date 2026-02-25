-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('peqi_token', 'peqi_domain_key', 'peqi_domain_fqdn', 'peqi_domain_id', 'peqi_user_name', 'peqi_user_email', 'peqi_checkpoint', 'peqi_error_login_mail', 'peqi_error_login_password', 'peqi_error_login', 'peqi_error_register_mail', 'peqi_error_register_name', 'peqi_error_register_phone', 'peqi_error_register_password', 'peqi_success_register', 'peqi_error_register', 'peqi_success_clear_cache', 'peqi_error_clear_cache', 'peqi_error_check_website', 'peqi_validation_results', 'peqi_success_change_level', 'peqi_error_change_level', 'peqi_payment_url', 'peqi_error_activate_plan', 'peqi_error_create_domain', 'peqi_error_pointed_domain', 'peqi_payment_id');


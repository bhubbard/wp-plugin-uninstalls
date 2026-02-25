-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mo_idp_new_certs', 'idp_keep_settings_intact', 'mo_idp_admin_email', 'mo_idp_admin_phone', 'mo_idp_protocol', 'mo_idp_entity_id', 'mo_idp_admin_customer_key', 'mo_idp_verify_customer', 'mo_idp_admin_api_key', 'mo_idp_new_registration', 'password_mismatch', 'mo_idp_new_x509_certs', 'mo_idp_admin_password', 'mo_idp_customer_token', 'mo_idp_registration_status', 'mo_idp_transactionId', 'sml_idp_lk', 't_site_status', 'site_idp_ckl', 'mo_saml_idp_plugin_version', 'mo_idp_message', 'mo_idp_usr_lmt');


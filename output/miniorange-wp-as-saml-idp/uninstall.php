<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mo_idp_new_certs');
delete_site_option('mo_idp_new_certs');
delete_option('idp_keep_settings_intact');
delete_site_option('idp_keep_settings_intact');
delete_option('mo_idp_admin_email');
delete_site_option('mo_idp_admin_email');
delete_option('mo_idp_admin_phone');
delete_site_option('mo_idp_admin_phone');
delete_option('mo_idp_protocol');
delete_site_option('mo_idp_protocol');
delete_option('mo_idp_entity_id');
delete_site_option('mo_idp_entity_id');
delete_option('mo_idp_admin_customer_key');
delete_site_option('mo_idp_admin_customer_key');
delete_option('mo_idp_verify_customer');
delete_site_option('mo_idp_verify_customer');
delete_option('mo_idp_admin_api_key');
delete_site_option('mo_idp_admin_api_key');
delete_option('mo_idp_new_registration');
delete_site_option('mo_idp_new_registration');
delete_option('password_mismatch');
delete_site_option('password_mismatch');
delete_option('mo_idp_new_x509_certs');
delete_site_option('mo_idp_new_x509_certs');
delete_option('mo_idp_admin_password');
delete_site_option('mo_idp_admin_password');
delete_option('mo_idp_customer_token');
delete_site_option('mo_idp_customer_token');
delete_option('mo_idp_registration_status');
delete_site_option('mo_idp_registration_status');
delete_option('mo_idp_transactionId');
delete_site_option('mo_idp_transactionId');
delete_option('sml_idp_lk');
delete_site_option('sml_idp_lk');
delete_option('t_site_status');
delete_site_option('t_site_status');
delete_option('site_idp_ckl');
delete_site_option('site_idp_ckl');
delete_option('mo_saml_idp_plugin_version');
delete_site_option('mo_saml_idp_plugin_version');
delete_option('mo_idp_message');
delete_site_option('mo_idp_message');
delete_option('mo_idp_usr_lmt');
delete_site_option('mo_idp_usr_lmt');


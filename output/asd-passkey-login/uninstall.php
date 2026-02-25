<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('asd_passkey_activation_notice');
delete_site_option('asd_passkey_activation_notice');
delete_option('asd_p4ssk3y_admin_login_form_style');
delete_site_option('asd_p4ssk3y_admin_login_form_style');
delete_option('asd_p4ssk3y_key1');
delete_site_option('asd_p4ssk3y_key1');
delete_option('asd_p4ssk3y_webpush_public_key');
delete_site_option('asd_p4ssk3y_webpush_public_key');
delete_option('asd_p4ssk3y_membership');
delete_site_option('asd_p4ssk3y_membership');
delete_option('asd_p4ssk3y_admin_password_confirmation');
delete_site_option('asd_p4ssk3y_admin_password_confirmation');
delete_option('asd_p4ssk3y_key2');
delete_site_option('asd_p4ssk3y_key2');
delete_option('asd_p4ssk3y_web_id');
delete_site_option('asd_p4ssk3y_web_id');
delete_option('asd_p4ssk3y_api_server');
delete_site_option('asd_p4ssk3y_api_server');
delete_option('asd_p4ssk3y_eauth_url');
delete_site_option('asd_p4ssk3y_eauth_url');
delete_option('asd_p4ssk3y_fedcm_url');
delete_site_option('asd_p4ssk3y_fedcm_url');
delete_option('asd_web_id');
delete_site_option('asd_web_id');
delete_option('asd_google_client_id');
delete_site_option('asd_google_client_id');
delete_option('asd_webpush_public_key');
delete_site_option('asd_webpush_public_key');


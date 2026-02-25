<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lsi_extra_fields');
delete_site_option('lsi_extra_fields');
delete_option('lsi_login_heading_text');
delete_site_option('lsi_login_heading_text');
delete_option('lsi_signup_heading_text');
delete_site_option('lsi_signup_heading_text');
delete_option('lsi_login_redirect_link');
delete_site_option('lsi_login_redirect_link');
delete_option('lsi_signup_link');
delete_site_option('lsi_signup_link');
delete_option('lsi_signup_redirect_link');
delete_site_option('lsi_signup_redirect_link');
delete_option('lsi_login_link');
delete_site_option('lsi_login_link');
delete_option('lsi_terms_condition_link');
delete_site_option('lsi_terms_condition_link');
delete_option('lsi_signup_role');
delete_site_option('lsi_signup_role');
delete_option('lsi_generate_username');
delete_site_option('lsi_generate_username');
delete_option('lsi_generate_password');
delete_site_option('lsi_generate_password');
delete_option('lsi_send_user_thankyou');
delete_site_option('lsi_send_user_thankyou');


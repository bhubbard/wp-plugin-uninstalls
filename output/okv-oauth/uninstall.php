<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('okvoauth_login_method');
delete_site_option('okvoauth_login_method');
delete_option('okvoauth_login_cookie_expiration');
delete_site_option('okvoauth_login_cookie_expiration');
delete_option('okvoauth_google_client_id');
delete_site_option('okvoauth_google_client_id');
delete_option('okvoauth_google_client_secret');
delete_site_option('okvoauth_google_client_secret');
delete_option('widget_rdoauth_loginlinks_widget');
delete_site_option('widget_rdoauth_loginlinks_widget');
delete_option('registration');
delete_site_option('registration');

// Delete Transients
delete_transient('rundiz-oauth-error');
delete_site_transient('rundiz-oauth-error');


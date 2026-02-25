<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aelurl_login_input');
delete_site_option('aelurl_login_input');
delete_option('aelurl_login');
delete_site_option('aelurl_login');
delete_option('aelurl_register_input');
delete_site_option('aelurl_register_input');
delete_option('aelurl_register');
delete_site_option('aelurl_register');
delete_option('aelurl_forgot_input');
delete_site_option('aelurl_forgot_input');
delete_option('aelurl_forgot');
delete_site_option('aelurl_forgot');
delete_option('aelurl_htaccess_original');
delete_site_option('aelurl_htaccess_original');


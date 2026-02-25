<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('login_logout_redirect_login_enable');
delete_site_option('login_logout_redirect_login_enable');
delete_option('login_logout_redirect_login');
delete_site_option('login_logout_redirect_login');
delete_option('login_logout_redirect_login_page');
delete_site_option('login_logout_redirect_login_page');
delete_option('login_logout_redirect_login_custom');
delete_site_option('login_logout_redirect_login_custom');
delete_option('login_logout_redirect_logout_enable');
delete_site_option('login_logout_redirect_logout_enable');
delete_option('login_logout_redirect_logout');
delete_site_option('login_logout_redirect_logout');
delete_option('login_logout_redirect_logout_page');
delete_site_option('login_logout_redirect_logout_page');
delete_option('login_logout_redirect_logout_custom');
delete_site_option('login_logout_redirect_logout_custom');


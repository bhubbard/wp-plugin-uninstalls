<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('serasend_user_login');
delete_site_option('serasend_user_login');
delete_option('serasend_user_password');
delete_site_option('serasend_user_password');
delete_option('serasend_last_login_check_status');
delete_site_option('serasend_last_login_check_status');
delete_option('serasend_last_login_check');
delete_site_option('serasend_last_login_check');


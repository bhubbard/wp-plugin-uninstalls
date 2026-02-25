<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('staempfli_crowd_login_option_name');
delete_site_option('staempfli_crowd_login_option_name');
delete_option('staempfli_crowd_login_test_option_name');
delete_site_option('staempfli_crowd_login_test_option_name');
delete_option('staempfli_crowd_login_mode');
delete_site_option('staempfli_crowd_login_mode');
delete_option('staempfli_crowd_login_securitymode');
delete_site_option('staempfli_crowd_login_securitymode');
delete_option('staempfli_crowd_account_type');
delete_site_option('staempfli_crowd_account_type');
delete_option('staempfli_crowd_url');
delete_site_option('staempfli_crowd_url');
delete_option('staempfli_crowd_application_name');
delete_site_option('staempfli_crowd_application_name');
delete_option('staempfli_crowd_application_password');
delete_site_option('staempfli_crowd_application_password');
delete_option('staempfli_crowd_group');
delete_site_option('staempfli_crowd_group');
delete_option('staempfli_crowd_test_username');
delete_site_option('staempfli_crowd_test_username');
delete_option('staempfli_crowd_test_password');
delete_site_option('staempfli_crowd_test_password');


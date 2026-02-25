<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adbkp_sandbox_mode');
delete_site_option('adbkp_sandbox_mode');
delete_option('adbkp_username');
delete_site_option('adbkp_username');
delete_option('adbkp_password');
delete_site_option('adbkp_password');
delete_option('adbkp_app_key');
delete_site_option('adbkp_app_key');
delete_option('adbkp_app_secret');
delete_site_option('adbkp_app_secret');


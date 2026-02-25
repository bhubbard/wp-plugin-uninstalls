<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpmp_settings');
delete_site_option('wpmp_settings');
delete_option('wpmp_notice');
delete_site_option('wpmp_notice');
delete_option('wp-maintenance-page');
delete_site_option('wp-maintenance-page');
delete_option('wp-maintenance-page-msqld');
delete_site_option('wp-maintenance-page-msqld');
delete_option('wpmp_version');
delete_site_option('wpmp_version');


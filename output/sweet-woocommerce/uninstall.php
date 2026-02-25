<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('SWEET_TRACKER_ID');
delete_site_option('SWEET_TRACKER_ID');
delete_option('SWEET_INIT_ERROR');
delete_site_option('SWEET_INIT_ERROR');
delete_option('SWEET_INIT_SUCCESS');
delete_site_option('SWEET_INIT_SUCCESS');
delete_option('SWEET_TRACKER');
delete_site_option('SWEET_TRACKER');
delete_option('SWEET_BASKET_TRACKER');
delete_site_option('SWEET_BASKET_TRACKER');

// Delete Transients
delete_transient('fx-admin-notice-sweet');
delete_site_transient('fx-admin-notice-sweet');


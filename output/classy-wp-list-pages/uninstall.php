<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('c_wp_lp_attr');
delete_site_option('c_wp_lp_attr');
delete_option('c_wp_lp_prefix');
delete_site_option('c_wp_lp_prefix');
delete_option('c_wp_lp_first_class');
delete_site_option('c_wp_lp_first_class');
delete_option('c_wp_lp_last_class');
delete_site_option('c_wp_lp_last_class');


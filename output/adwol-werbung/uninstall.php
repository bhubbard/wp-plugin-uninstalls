<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_adwol_publisher');
delete_site_option('wp_adwol_publisher');
delete_option('wp_adwol_bei');
delete_site_option('wp_adwol_bei');
delete_option('wp_adwol_rel');
delete_site_option('wp_adwol_rel');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('msp_theme_support');
delete_site_option('msp_theme_support');
delete_option('msp_loop_file');
delete_site_option('msp_loop_file');
delete_option('msp_nav_location');
delete_site_option('msp_nav_location');


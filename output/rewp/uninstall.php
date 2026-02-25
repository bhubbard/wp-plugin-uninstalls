<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rewp_chrome-bar-color');
delete_site_option('rewp_chrome-bar-color');
delete_option('rewp_g-analytics-id');
delete_site_option('rewp_g-analytics-id');
delete_option('rewp_add-font-awesome');
delete_site_option('rewp_add-font-awesome');
delete_option('rewp_allow-svg');
delete_site_option('rewp_allow-svg');
delete_option('rewp_jquery');
delete_site_option('rewp_jquery');
delete_option('g-analytics-id');
delete_site_option('g-analytics-id');


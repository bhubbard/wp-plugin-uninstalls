<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_sf_width');
delete_site_option('simple_sf_width');
delete_option('simple_sf_pid');
delete_site_option('simple_sf_pid');
delete_option('simple_sf_style');
delete_site_option('simple_sf_style');
delete_option('simple_sf_hide');
delete_site_option('simple_sf_hide');
delete_option('simple_sf_delay');
delete_site_option('simple_sf_delay');
delete_option('simple_sf_effect');
delete_site_option('simple_sf_effect');
delete_option('simple_sf_activate_shortcode');
delete_site_option('simple_sf_activate_shortcode');


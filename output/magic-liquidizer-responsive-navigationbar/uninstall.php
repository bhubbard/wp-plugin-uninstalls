<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('liquidizer_lite_wp_navigationbar');
delete_site_option('liquidizer_lite_wp_navigationbar');
delete_option('liquidizer_lite_wp_which_navigationbar_element');
delete_site_option('liquidizer_lite_wp_which_navigationbar_element');
delete_option('liquidizer_lite_wp_navigationbar_width');
delete_site_option('liquidizer_lite_wp_navigationbar_width');
delete_option('liquidizer_lite_wp_navcolor');
delete_site_option('liquidizer_lite_wp_navcolor');
delete_option('liquidizer_lite_wp_navselect');
delete_site_option('liquidizer_lite_wp_navselect');
delete_option('liquidizer_lite_wp_home');
delete_site_option('liquidizer_lite_wp_home');
delete_option('liquidizer_lite_wp_info');
delete_site_option('liquidizer_lite_wp_info');
delete_option('liquidizer_lite_wp_contact');
delete_site_option('liquidizer_lite_wp_contact');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('liquidizer_lite_wp_table');
delete_site_option('liquidizer_lite_wp_table');
delete_option('liquidizer_lite_wp_which_table_element');
delete_site_option('liquidizer_lite_wp_which_table_element');
delete_option('liquidizer_lite_wp_table_width');
delete_site_option('liquidizer_lite_wp_table_width');
delete_option('liquidizer_lite_header_selector');
delete_site_option('liquidizer_lite_header_selector');
delete_option('liquidizer_lite_bodyrow_selector');
delete_site_option('liquidizer_lite_bodyrow_selector');


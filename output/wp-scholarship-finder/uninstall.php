<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('search_box_heading');
delete_site_option('search_box_heading');
delete_option('search_button_name');
delete_site_option('search_button_name');
delete_option('no_of_pages_counter');
delete_site_option('no_of_pages_counter');


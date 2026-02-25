<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wkbooking_link');
delete_site_option('wkbooking_link');
delete_option('wkbooking_selected_pages');
delete_site_option('wkbooking_selected_pages');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('travelling_blogger_location_page_id');
delete_site_option('travelling_blogger_location_page_id');
delete_option('travelling_blogger_version');
delete_site_option('travelling_blogger_version');


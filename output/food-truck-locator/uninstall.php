<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('foodtrucklocator_db_version');
delete_site_option('foodtrucklocator_db_version');
delete_option('foodtrucklocator_settings');
delete_site_option('foodtrucklocator_settings');


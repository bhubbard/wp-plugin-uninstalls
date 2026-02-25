<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('page_attributes_sync_nav_menu');
delete_site_option('page_attributes_sync_nav_menu');
delete_option('fb_page_attributes_db_version');
delete_site_option('fb_page_attributes_db_version');


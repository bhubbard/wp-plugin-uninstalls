<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vision_db_version');
delete_site_option('vision_db_version');
delete_option('vision_activated');
delete_site_option('vision_activated');
delete_option('vision_settings');
delete_site_option('vision_settings');


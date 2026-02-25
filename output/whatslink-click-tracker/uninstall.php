<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('whatslink_click_tracker_show_badge_counter');
delete_site_option('whatslink_click_tracker_show_badge_counter');
delete_option('whatslink_click_tracker_db_version');
delete_site_option('whatslink_click_tracker_db_version');


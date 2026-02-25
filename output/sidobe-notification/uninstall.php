<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sidobe_wp_notif_options');
delete_site_option('sidobe_wp_notif_options');
delete_option('sidobe_wp_notif_db_version');
delete_site_option('sidobe_wp_notif_db_version');


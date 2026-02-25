<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ip2location_widget_language');
delete_site_option('ip2location_widget_language');
delete_option('ip2location_widget_type');
delete_site_option('ip2location_widget_type');
delete_option('ip2location_widget_debug_log_enabled');
delete_site_option('ip2location_widget_debug_log_enabled');


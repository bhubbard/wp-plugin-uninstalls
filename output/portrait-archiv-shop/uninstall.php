<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('PAWPS_DISPLAY_ROWS');
delete_site_option('PAWPS_DISPLAY_ROWS');
delete_option('PAWPS_DISPLAY_COLS');
delete_site_option('PAWPS_DISPLAY_COLS');
delete_option('PAWPS_TEMPLATE_NAME');
delete_site_option('PAWPS_TEMPLATE_NAME');
delete_option('PAWPS_DEBUG');
delete_site_option('PAWPS_DEBUG');

// Clear Cron Jobs
wp_clear_scheduled_hook('pawps_refresh_hook');


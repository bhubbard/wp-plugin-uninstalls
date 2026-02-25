<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wms7_main_settings');
delete_site_option('wms7_main_settings');
delete_option('wms7_backend');
delete_site_option('wms7_backend');
delete_option('wms7_frontend');
delete_site_option('wms7_frontend');
delete_option('wms7_visitors_per_page');
delete_site_option('wms7_visitors_per_page');
delete_option('wms7_screen_settings');
delete_site_option('wms7_screen_settings');
delete_option('wms7_search');
delete_site_option('wms7_search');
delete_option('wms7_current_url');
delete_site_option('wms7_current_url');
delete_option('wms7_cron');
delete_site_option('wms7_cron');
delete_option('cron');
delete_site_option('cron');
delete_option('wms7_console');
delete_site_option('wms7_console');

// Clear Cron Jobs
wp_clear_scheduled_hook('wms7_truncate');
wp_clear_scheduled_hook('wms7_htaccess');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gdprconsentmanager_api_status');
delete_site_option('gdprconsentmanager_api_status');
delete_option('gdprconsentmanager_schedular_options');
delete_site_option('gdprconsentmanager_schedular_options');
delete_option('gdprconsentmanager_options');
delete_site_option('gdprconsentmanager_options');
delete_option(' gdprconsentmanager_cookie_widget_options');
delete_site_option(' gdprconsentmanager_cookie_widget_options');
delete_option('gdprconsentmanager_website_connections_options');
delete_site_option('gdprconsentmanager_website_connections_options');
delete_option('gdprconsentmanager_webupdate_options');
delete_site_option('gdprconsentmanager_webupdate_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('trigger_per_day');


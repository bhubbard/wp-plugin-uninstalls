<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wplocalseo_cleaner_time');
delete_site_option('wplocalseo_cleaner_time');
delete_option('wplocalseo_cleaner_time_old');
delete_site_option('wplocalseo_cleaner_time_old');
delete_option('wplocalseo_cleaner_autoptimize');
delete_site_option('wplocalseo_cleaner_autoptimize');
delete_option('wplocalseo_cleaner_w3totalcache');
delete_site_option('wplocalseo_cleaner_w3totalcache');
delete_option('wplocalseo_cleaner_wpsupercache');
delete_site_option('wplocalseo_cleaner_wpsupercache');
delete_option('wplocalseo_cleaner_wpfastestcache');
delete_site_option('wplocalseo_cleaner_wpfastestcache');
delete_option('wplocalseo_cleaner_cometcache');
delete_site_option('wplocalseo_cleaner_cometcache');
delete_option('wplocalseo_cleaner_cacheenabler');
delete_site_option('wplocalseo_cleaner_cacheenabler');
delete_option('wplocalseo_cleaner_rocket');
delete_site_option('wplocalseo_cleaner_rocket');
delete_option('wplocalseo_cleaner_notify');
delete_site_option('wplocalseo_cleaner_notify');
delete_option('wplocalseo_cleaner_notificationsemail');
delete_site_option('wplocalseo_cleaner_notificationsemail');

// Clear Cron Jobs
wp_clear_scheduled_hook('wplocalseo_cleaner_clean_all_cache');


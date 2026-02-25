<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('planaday-api-general');
delete_site_option('planaday-api-general');
delete_option('planaday-api-css');
delete_site_option('planaday-api-css');
delete_option('planaday-api-payment');
delete_site_option('planaday-api-payment');
delete_option('planaday-api-version');
delete_site_option('planaday-api-version');
delete_option('paytium_test_api_key');
delete_site_option('paytium_test_api_key');
delete_option('paytium_live_api_key');
delete_site_option('paytium_live_api_key');
delete_option('paytium_enable_live_key');
delete_site_option('paytium_enable_live_key');

// Clear Cron Jobs
wp_clear_scheduled_hook('pad_cron_update_all_courses');


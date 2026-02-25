<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('google_plus_api');
delete_site_option('google_plus_api');
delete_option('social_shares_plugin_version');
delete_site_option('social_shares_plugin_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('social_shares_cron_hook_5min');
wp_clear_scheduled_hook('social_shares_cron_hook_20min');
wp_clear_scheduled_hook('social_shares_cron_hook_1hour');
wp_clear_scheduled_hook('social_shares_cron_hook_1week');


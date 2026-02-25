<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('toolbelt_options');
delete_site_option('toolbelt_options');
delete_option('toolbelt_settings');
delete_site_option('toolbelt_settings');
delete_option('disallowed_keys');
delete_site_option('disallowed_keys');

// Clear Cron Jobs
wp_clear_scheduled_hook('toolbelt_cron_daily');
wp_clear_scheduled_hook('toolbelt_cron_weekly');


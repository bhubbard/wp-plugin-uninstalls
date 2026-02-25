<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_currencies_settings');
delete_site_option('wp_currencies_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_currencies_update');


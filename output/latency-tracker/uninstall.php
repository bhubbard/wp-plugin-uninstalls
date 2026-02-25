<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plugin_latencytracker_settings');
delete_site_option('plugin_latencytracker_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('lt_clear_max');


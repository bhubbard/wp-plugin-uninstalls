<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sssi_options');
delete_site_option('sssi_options');

// Delete Transients
delete_transient('sssi_style_cache');
delete_site_transient('sssi_style_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('sssi_daily_cleanup');


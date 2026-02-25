<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sprp_version');
delete_site_option('sprp_version');
delete_option('sprp_settings');
delete_site_option('sprp_settings');

// Delete Transients
delete_transient('sprp_stats');
delete_site_transient('sprp_stats');

// Clear Cron Jobs
wp_clear_scheduled_hook('sprp_cleanup');


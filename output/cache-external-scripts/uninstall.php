<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ces_settings');
delete_site_option('ces_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('cache-external-scripts-cron');


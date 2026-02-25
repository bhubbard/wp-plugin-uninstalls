<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('businessdirectory_admin_notices');
delete_site_option('businessdirectory_admin_notices');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('businessdirectory_installing');
delete_site_transient('businessdirectory_installing');

// Clear Cron Jobs
wp_clear_scheduled_hook('businessdirectory_daily_event');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('signups_cron_settings');
delete_site_option('signups_cron_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('signups_cron_event_hook');


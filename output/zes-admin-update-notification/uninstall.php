<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zaun_notified');
delete_site_option('zaun_notified');
delete_option('update_plugins');
delete_site_option('update_plugins');
delete_option('update_core');
delete_site_option('update_core');

// Clear Cron Jobs
wp_clear_scheduled_hook('zaun_cron_event');
wp_clear_scheduled_hook('zaun_test');


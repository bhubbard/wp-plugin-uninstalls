<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plugin_update_notifier_email');
delete_site_option('plugin_update_notifier_email');
delete_option('plugin_update_notifier_interval');
delete_site_option('plugin_update_notifier_interval');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('update_core');
delete_site_transient('update_core');

// Clear Cron Jobs
wp_clear_scheduled_hook('plugin_update_notifier_daily_check');


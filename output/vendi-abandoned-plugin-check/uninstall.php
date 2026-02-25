<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('vendi_plugin_health_check');
delete_site_transient('vendi_plugin_health_check');

// Clear Cron Jobs
wp_clear_scheduled_hook('vendi_plugin_health_check');
wp_clear_scheduled_hook('vendi_plugin_health_check_batch');
wp_clear_scheduled_hook('vendi_plugin_health_watcher');


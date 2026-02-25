<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('dawpu_themes');
delete_site_transient('dawpu_themes');
delete_transient('dawpu_plugins');
delete_site_transient('dawpu_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_update_themes');
wp_clear_scheduled_hook('wp_update_plugins');
wp_clear_scheduled_hook('wp_version_check');
wp_clear_scheduled_hook('wp_maybe_auto_update');


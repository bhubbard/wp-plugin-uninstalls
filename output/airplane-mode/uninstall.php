<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('airplane-mode');
delete_site_option('airplane-mode');

// Delete Transients
delete_transient('wporg_theme_feature_list');
delete_site_transient('wporg_theme_feature_list');
delete_transient('update_core');
delete_site_transient('update_core');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_update_themes');
wp_clear_scheduled_hook('wp_update_plugins');
wp_clear_scheduled_hook('wp_version_check');
wp_clear_scheduled_hook('wp_maybe_auto_update');


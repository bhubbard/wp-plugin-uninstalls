<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_auto_updater_history_table_version');
delete_site_option('wp_auto_updater_history_table_version');
delete_option('auto_update_core_major');
delete_site_option('auto_update_core_major');

// Delete Transients
delete_transient('wp_auto_updater/history_table/updated');
delete_site_transient('wp_auto_updater/history_table/updated');
delete_transient('wp_auto_updater/history_table/created');
delete_site_transient('wp_auto_updater/history_table/created');
delete_transient('wp_auto_updater/upgraded_version');
delete_site_transient('wp_auto_updater/upgraded_version');
delete_transient('update_core');
delete_site_transient('update_core');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_version_check');
wp_clear_scheduled_hook('wp_update_themes');
wp_clear_scheduled_hook('wp_update_plugins');


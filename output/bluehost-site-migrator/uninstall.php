<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bh_site_migration_country_code');
delete_site_option('bh_site_migration_country_code');
delete_option('bh_site_migration_geo_data');
delete_site_option('bh_site_migration_geo_data');
delete_option('bh_site_migration_region_urls');
delete_site_option('bh_site_migration_region_urls');
delete_option('bh_site_migration_id');
delete_site_option('bh_site_migration_id');
delete_option('bh_site_migration_token');
delete_site_option('bh_site_migration_token');
delete_option('wp_module_tasks_schedules');
delete_site_option('wp_module_tasks_schedules');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('bluehost_site_migrator_can_migrate');
delete_site_transient('bluehost_site_migrator_can_migrate');

// Clear Cron Jobs
wp_clear_scheduled_hook('bluehost_site_migrator_purge_migration_packages');
wp_clear_scheduled_hook('task_execution_hook');
wp_clear_scheduled_hook('scheduler_task_runner');
wp_clear_scheduled_hook('cleanup_tasks');


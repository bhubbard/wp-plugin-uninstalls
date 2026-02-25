<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('adbc_plugin_automation');
delete_site_option('adbc_plugin_automation');
delete_option('aDBc_settings');
delete_site_option('aDBc_settings');
delete_option('aDBc_clean_schedule');
delete_site_option('aDBc_clean_schedule');
delete_option('aDBc_optimize_schedule');
delete_site_option('aDBc_optimize_schedule');
delete_option('aDBc_security_folder_code');
delete_site_option('aDBc_security_folder_code');
delete_option('adbc_plugin_settings');
delete_site_option('adbc_plugin_settings');

// Delete Transients
delete_transient('adbc_plugin_tables_to_repair');
delete_site_transient('adbc_plugin_tables_to_repair');

// Clear Cron Jobs
wp_clear_scheduled_hook('adbc_cron_analytics');
wp_clear_scheduled_hook('adbc_cron_automation');


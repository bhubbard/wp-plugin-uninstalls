<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spam_master_keys_db_version');
delete_site_option('spam_master_keys_db_version');
delete_option('spam_master_connection');
delete_site_option('spam_master_connection');
delete_option('blacklist_keys_bk');
delete_site_option('blacklist_keys_bk');
delete_option('spam_master_whitelist');
delete_site_option('spam_master_whitelist');
delete_option('spam_master_upgrade_to_6');
delete_site_option('spam_master_upgrade_to_6');

// Delete Transients
delete_transient('spam_master_license_data');
delete_site_transient('spam_master_license_data');
delete_transient('spam_master_repo_license_data');
delete_site_transient('spam_master_repo_license_data');
delete_transient('spam_master_all_settings');
delete_site_transient('spam_master_all_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('spam_master_key_load');
wp_clear_scheduled_hook('spam_master_tasks_load');
wp_clear_scheduled_hook('spam_master_weekly_report_load');


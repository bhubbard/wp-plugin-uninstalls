<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('backuply_backup_stopped');
delete_site_option('backuply_backup_stopped');
delete_option('backuply_status');
delete_site_option('backuply_status');
delete_option('backuply_notify_email_address');
delete_site_option('backuply_notify_email_address');
delete_option('backuply_last_backup');
delete_site_option('backuply_last_backup');
delete_option('backuply_additional_fileindex');
delete_site_option('backuply_additional_fileindex');
delete_option('backuply_pro_version');
delete_site_option('backuply_pro_version');
delete_option('backuply_cron_settings');
delete_site_option('backuply_cron_settings');
delete_option('backuply_config_keys');
delete_site_option('backuply_config_keys');
delete_option('backuply_remote_backup_locs');
delete_site_option('backuply_remote_backup_locs');
delete_option('backuply_version');
delete_site_option('backuply_version');
delete_option('backuply_settings');
delete_site_option('backuply_settings');
delete_option('backuply_license');
delete_site_option('backuply_license');
delete_option('backuply_excludes');
delete_site_option('backuply_excludes');
delete_option('backuply_debug');
delete_site_option('backuply_debug');
delete_option('bcloud_key');
delete_site_option('bcloud_key');
delete_option('backuply_cron_schedules');
delete_site_option('backuply_cron_schedules');
delete_option('backuply_hide_trial');
delete_site_option('backuply_hide_trial');
delete_option('backuply_promo_time');
delete_site_option('backuply_promo_time');
delete_option('backuply_last_restore');
delete_site_option('backuply_last_restore');
delete_option('backuply_hide_holiday');
delete_site_option('backuply_hide_holiday');
delete_option('backuply_black_friday');
delete_site_option('backuply_black_friday');
delete_option('external_updates-backuply-pro');
delete_site_option('external_updates-backuply-pro');
delete_option('backuply_offer_time');
delete_site_option('backuply_offer_time');
delete_option('backuply_backup_nag');
delete_site_option('backuply_backup_nag');
delete_option('backuply_license_notice');
delete_site_option('backuply_license_notice');
delete_option('bcloud_trial_time');
delete_site_option('bcloud_trial_time');
delete_option('softaculous_plugin_update_notice');
delete_site_option('softaculous_plugin_update_notice');
delete_option('backuply_litespeed_notice');
delete_site_option('backuply_litespeed_notice');
delete_option('backuply_restore_session_key');
delete_site_option('backuply_restore_session_key');
delete_option('backuply_sql_repair_log');
delete_site_option('backuply_sql_repair_log');

// Delete Transients
delete_transient('bcloud_data');
delete_site_transient('bcloud_data');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('bcloud_trial_token');
delete_site_transient('bcloud_trial_token');

// Clear Cron Jobs
wp_clear_scheduled_hook('backuply_timeout_check');
wp_clear_scheduled_hook('backuply_update_quota');
wp_clear_scheduled_hook('backuply_clean_tmp');
wp_clear_scheduled_hook('backuply_auto_backup_cron');


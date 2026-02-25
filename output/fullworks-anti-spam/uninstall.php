<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fullworks-anti-spam');
delete_site_option('fullworks-anti-spam');
delete_option('fullworks_anti_spam_db_version');
delete_site_option('fullworks_anti_spam_db_version');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('fullworks-anti-spam-utility-data');
delete_site_transient('fullworks-anti-spam-utility-data');
delete_transient('fullworks_anti_spam_key_name');
delete_site_transient('fullworks_anti_spam_key_name');
delete_transient('fullworks_anti_spam_key_value');
delete_site_transient('fullworks_anti_spam_key_value');
delete_transient('fwantispam_training_data_obj');
delete_site_transient('fwantispam_training_data_obj');
delete_transient('fullworks_anti_spam_random_version');
delete_site_transient('fullworks_anti_spam_random_version');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fullworks_anti_spam_daily_admin');
wp_clear_scheduled_hook('fullworks_anti_spam_daily_training');
wp_clear_scheduled_hook('fwas_admin_daily');
wp_clear_scheduled_hook('fullworks_anti_spam_monthly_reports');
wp_clear_scheduled_hook('fullworks_anti_spam_alerts');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fwas_upgrade_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fwas_upgrade_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fwas_upgrade_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fwas_upgrade_notice_dismissed' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('webp_cp_backup_reminder');
delete_site_option('webp_cp_backup_reminder');
delete_option('webp_cp_backup_deletion_duration');
delete_site_option('webp_cp_backup_deletion_duration');
delete_option('webp_cp_backup_deletion_date');
delete_site_option('webp_cp_backup_deletion_date');
delete_option('webp_cp_enable_backup');
delete_site_option('webp_cp_enable_backup');
delete_option('webp_cp_auto_convert');
delete_site_option('webp_cp_auto_convert');
delete_option('webp_cp_lazy_load');
delete_site_option('webp_cp_lazy_load');
delete_option('webp_cp_compression_quality');
delete_site_option('webp_cp_compression_quality');
delete_option('webp_cp_serve_webp');
delete_site_option('webp_cp_serve_webp');
delete_option('webp_cp_custom_duration');
delete_site_option('webp_cp_custom_duration');

// Clear Cron Jobs
wp_clear_scheduled_hook('webp_cp_backup_reminder_cron');
wp_clear_scheduled_hook('webp_cp_convert_batch_progress');
wp_clear_scheduled_hook('webp_cp_convert_batch');
wp_clear_scheduled_hook('webp_cp_delete_backup');
wp_clear_scheduled_hook('webp_cp_auto_convert_attachment');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'webp_cp_backup_reminder_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'webp_cp_backup_reminder_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'webp_cp_backup_reminder_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'webp_cp_backup_reminder_dismissed' ) );


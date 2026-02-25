<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smush_deactivated');
delete_site_option('smush_deactivated');
delete_option('skip-smush-setup');
delete_site_option('skip-smush-setup');
delete_option('wp_smush_pre_3_22_site');
delete_site_option('wp_smush_pre_3_22_site');
delete_option('wp-smush-show_upgrade_modal');
delete_site_option('wp-smush-show_upgrade_modal');
delete_option('wp-smush-api_message');
delete_site_option('wp-smush-api_message');
delete_option('wp-smush-settings_updated');
delete_site_option('wp-smush-settings_updated');
delete_option('wp-smush-networkwide');
delete_site_option('wp-smush-networkwide');
delete_option('wp-smush-show-new-feature-hotspot');
delete_site_option('wp-smush-show-new-feature-hotspot');
delete_option('dir_smush_stats');
delete_site_option('dir_smush_stats');
delete_option('wp-smush-dismissed-notices');
delete_site_option('wp-smush-dismissed-notices');
delete_option('wp-smush-hide_upgrade_notice');
delete_site_option('wp-smush-hide_upgrade_notice');
delete_option('wp-smush-hide_s3support_alert');
delete_site_option('wp-smush-hide_s3support_alert');
delete_option('wp_smush_event_times');
delete_site_option('wp_smush_event_times');
delete_option('wp-smush-last_run_sync');
delete_site_option('wp-smush-last_run_sync');
delete_option('wp-smush-preset_configs');
delete_site_option('wp-smush-preset_configs');
delete_option('wpmudev_apikey');
delete_site_option('wpmudev_apikey');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_w' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_h' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_crop' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('medium_large_size_w');
delete_site_option('medium_large_size_w');
delete_option('medium_large_size_h');
delete_site_option('medium_large_size_h');
delete_option('wp_smush_show_connected_modal');
delete_site_option('wp_smush_show_connected_modal');
delete_option('wp_smush_api_auth');
delete_site_option('wp_smush_api_auth');
delete_option('wp-smush-version');
delete_site_option('wp-smush-version');
delete_option('wp-smush-install-type');
delete_site_option('wp-smush-install-type');
delete_option('wp-smush-hide_blackfriday_modal');
delete_site_option('wp-smush-hide_blackfriday_modal');
delete_option('wp-smush-transparent_png');
delete_site_option('wp-smush-transparent_png');
delete_option('wp-smush-show-black-friday');
delete_site_option('wp-smush-show-black-friday');
delete_option('wp-smush-run_recheck');
delete_site_option('wp-smush-run_recheck');
delete_option('wp-smush-hide_pagespeed_suggestion');
delete_site_option('wp-smush-hide_pagespeed_suggestion');
delete_option('wp-smush-hide_smush_welcome');
delete_site_option('wp-smush-hide_smush_welcome');
delete_option('wdev_logger_wp-smush-pro');
delete_site_option('wdev_logger_wp-smush-pro');
delete_option('wdev_logger_wp-smushit');
delete_site_option('wdev_logger_wp-smushit');
delete_option('wp-smush-webp_hide_wizard');
delete_site_option('wp-smush-webp_hide_wizard');
delete_option('wp-smush-png2jpg-rewrite-rules-flushed');
delete_site_option('wp-smush-png2jpg-rewrite-rules-flushed');
delete_option('wp_smush_scan_slice_size');
delete_site_option('wp_smush_scan_slice_size');
delete_option('wp-smush-image_sizes');
delete_site_option('wp-smush-image_sizes');
delete_option('wp-smush-resize_sizes');
delete_site_option('wp-smush-resize_sizes');
delete_option('wp-smush-cdn_status');
delete_site_option('wp-smush-cdn_status');
delete_option('wp-smush-lazy_load');
delete_site_option('wp-smush-lazy_load');
delete_option('wp-smush-cdn-advanced-settings');
delete_site_option('wp-smush-cdn-advanced-settings');
delete_option('wp-smush-hide-tutorials');
delete_site_option('wp-smush-hide-tutorials');
delete_option('smush_global_stats');
delete_site_option('smush_global_stats');
delete_option('wp-smush-resmush-list');
delete_site_option('wp-smush-resmush-list');
delete_option('allowedthemes');
delete_site_option('allowedthemes');
delete_option('ftp_credentials');
delete_site_option('ftp_credentials');
delete_option('wp-smush-hide_update_info');
delete_site_option('wp-smush-hide_update_info');
delete_option('wp_smush_scan');
delete_site_option('wp_smush_scan');
delete_option('wp-smush-scan-step');
delete_site_option('wp-smush-scan-step');
delete_option('wp-smush-plugin-activated');
delete_site_option('wp-smush-plugin-activated');

// Delete Transients
delete_transient('wp-smush-conflict_check');
delete_site_transient('wp-smush-conflict_check');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wp-smush-restore-%', '_site_transient_wp-smush-restore-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_smush-in-progress-%', '_site_transient_smush-in-progress-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('wp-smush-show-dir-scan-notice');
delete_site_transient('wp-smush-show-dir-scan-notice');
delete_transient('wp-smush-dir-scan-failed-items');
delete_site_transient('wp-smush-dir-scan-failed-items');
delete_transient('wp-smush-dir-scan-skipped-items');
delete_site_transient('wp-smush-dir-scan-skipped-items');
delete_transient('wp_smush_skip_image_sizes_recheck');
delete_site_transient('wp_smush_skip_image_sizes_recheck');

// Clear Cron Jobs
wp_clear_scheduled_hook('smush_check_for_conflicts');
wp_clear_scheduled_hook('wdev_logger_clear_logs');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp-smush-resize_savings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp-smush-resize_savings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp-smush-resize_savings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp-smush-resize_savings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp-smush-ignore-bulk' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp-smush-ignore-bulk' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp-smush-ignore-bulk' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp-smush-ignore-bulk' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp-smush-pngjpg_savings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp-smush-pngjpg_savings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp-smush-pngjpg_savings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp-smush-pngjpg_savings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp-smush-lossy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp-smush-lossy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp-smush-lossy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp-smush-lossy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_backup_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_backup_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_backup_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_backup_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp-smush-original_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp-smush-original_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp-smush-original_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp-smush-original_file' ) );


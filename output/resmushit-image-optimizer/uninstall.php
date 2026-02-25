<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-notices' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('resmushit_on_upload');
delete_site_option('resmushit_on_upload');
delete_option('resmushit_qlty');
delete_site_option('resmushit_qlty');
delete_option('resmushit_statistics');
delete_site_option('resmushit_statistics');
delete_option('resmushit_logs');
delete_site_option('resmushit_logs');
delete_option('resmushit_cron');
delete_site_option('resmushit_cron');
delete_option('resmushit_preserve_exif');
delete_site_option('resmushit_preserve_exif');
delete_option('resmushit_remove_unsmushed');
delete_site_option('resmushit_remove_unsmushed');
delete_option('resmushit_notice_close');
delete_site_option('resmushit_notice_close');
delete_option('resmushit_has_no_backup_files');
delete_site_option('resmushit_has_no_backup_files');
delete_option('resmushit_cron_firstactivation');
delete_site_option('resmushit_cron_firstactivation');
delete_option('resmushit_cron_lastaction');
delete_site_option('resmushit_cron_lastaction');
delete_option('resmushit_cron_lastrun');
delete_site_option('resmushit_cron_lastrun');
delete_option('resmushit_total_optimized');
delete_site_option('resmushit_total_optimized');
delete_option('resmushit_notice_close_eoldec23');
delete_site_option('resmushit_notice_close_eoldec23');

// Clear Cron Jobs
wp_clear_scheduled_hook('resmushit_optimize');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'resmushed_quality' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'resmushed_quality' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'resmushed_quality' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'resmushed_quality' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'resmushed_cumulated_original_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'resmushed_cumulated_original_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'resmushed_cumulated_original_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'resmushed_cumulated_original_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'resmushed_cumulated_optimized_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'resmushed_cumulated_optimized_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'resmushed_cumulated_optimized_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'resmushed_cumulated_optimized_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'resmushed_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'resmushed_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'resmushed_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'resmushed_disabled' ) );


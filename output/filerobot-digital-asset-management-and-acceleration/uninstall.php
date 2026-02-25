<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('filerobot_token');
delete_site_option('filerobot_token');
delete_option('filerobot_sec_id');
delete_site_option('filerobot_sec_id');
delete_option('filerobot_endpoint');
delete_site_option('filerobot_endpoint');
delete_option('filerobot_container');
delete_site_option('filerobot_container');
delete_option('filerobot_sync_post_id_to_metadata');
delete_site_option('filerobot_sync_post_id_to_metadata');
delete_option('filerobot_sync_post_id');
delete_site_option('filerobot_sync_post_id');
delete_option('filerobot_cname');
delete_site_option('filerobot_cname');
delete_option('filerobot_cloud_storage_only');
delete_site_option('filerobot_cloud_storage_only');
delete_option('filerobot_use_fmaw_only');
delete_site_option('filerobot_use_fmaw_only');
delete_option('filerobot_sync_comments');
delete_site_option('filerobot_sync_comments');
delete_option('filerobot_sync_metadata');
delete_site_option('filerobot_sync_metadata');
delete_option('filerobot_sync_multiple_metadata_to_db');
delete_site_option('filerobot_sync_multiple_metadata_to_db');
delete_option('filerobot_metadata_fields');
delete_site_option('filerobot_metadata_fields');
delete_option('filerobot_name_the_metadata_list');
delete_site_option('filerobot_name_the_metadata_list');
delete_option('filerobot_change_value_wp_attached_file_to_cdn_link');
delete_site_option('filerobot_change_value_wp_attached_file_to_cdn_link');
delete_option('filerobot_sync_metadata_by_custom_meta_key');
delete_site_option('filerobot_sync_metadata_by_custom_meta_key');
delete_option('filerobot_metadata_by_custom_meta_key');
delete_site_option('filerobot_metadata_by_custom_meta_key');
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

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_filerobot_sync_files');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );


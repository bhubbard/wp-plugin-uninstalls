<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_ulike_pro_license_key');
delete_site_option('wp_ulike_pro_license_key');
delete_option('wp_ulike_use_inline_custom_css');
delete_site_option('wp_ulike_use_inline_custom_css');
delete_option('wp_ulike_dbVersion');
delete_site_option('wp_ulike_dbVersion');
delete_option('disallowed_keys');
delete_site_option('disallowed_keys');
delete_option('nitropack-autoCachePurge');
delete_site_option('nitropack-autoCachePurge');
delete_option('wp_ulike_settings');
delete_site_option('wp_ulike_settings');
delete_option('wp_ulike_customize');
delete_site_option('wp_ulike_customize');
delete_option('wp_ulike_pro_license_checksum');
delete_site_option('wp_ulike_pro_license_checksum');
delete_option('wp_ulike_pro_license_signature');
delete_site_option('wp_ulike_pro_license_signature');
delete_option('wp_ulike_pro_license_data');
delete_site_option('wp_ulike_pro_license_data');
delete_option('wp_ulike_pro_license_data_fallback');
delete_site_option('wp_ulike_pro_license_data_fallback');
delete_option('widget_wp_ulike');
delete_site_option('widget_wp_ulike');

// Delete Transients
delete_transient('wp_ulike_global_avg_likes');
delete_site_transient('wp_ulike_global_avg_likes');
delete_transient('wp_ulike_pro_license_data');
delete_site_transient('wp_ulike_pro_license_data');
delete_transient('wp_ulike_pro_license_status');
delete_site_transient('wp_ulike_pro_license_status');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_ulf_errors_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_ulf_errors_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_ulf_errors_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_ulf_errors_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_liked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_liked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_liked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_liked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_commentliked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_commentliked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_commentliked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_commentliked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_topicliked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_topicliked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_topicliked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_topicliked' ) );


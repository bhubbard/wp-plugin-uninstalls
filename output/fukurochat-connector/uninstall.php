<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fukurochat_assistant_uuid');
delete_site_option('fukurochat_assistant_uuid');
delete_option('fukurochat_bubble_text');
delete_site_option('fukurochat_bubble_text');
delete_option('fukurochat_target_id');
delete_site_option('fukurochat_target_id');
delete_option('fukurochat_position');
delete_site_option('fukurochat_position');
delete_option('fukurochat_offset_horizontal');
delete_site_option('fukurochat_offset_horizontal');
delete_option('fukurochat_offset_vertical');
delete_site_option('fukurochat_offset_vertical');
delete_option('fukurochat_sync_enabled');
delete_site_option('fukurochat_sync_enabled');
delete_option('fukurochat_api_secret');
delete_site_option('fukurochat_api_secret');
delete_option('fukurochat_credentials_valid');
delete_site_option('fukurochat_credentials_valid');
delete_option('fukurochat_assistant_name');
delete_site_option('fukurochat_assistant_name');

// Delete Transients
delete_transient('fukurochat_last_sync_result');
delete_site_transient('fukurochat_last_sync_result');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fukurochat_is_new' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fukurochat_is_new' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fukurochat_is_new' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fukurochat_is_new' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fukurochat_synced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fukurochat_synced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fukurochat_synced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fukurochat_synced' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fukurochat_alternative_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fukurochat_alternative_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fukurochat_alternative_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fukurochat_alternative_products' ) );


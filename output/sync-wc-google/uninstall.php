<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wbps_connection_status');
delete_site_option('wbps_connection_status');
delete_option('wbps_webhook_url');
delete_site_option('wbps_webhook_url');
delete_option('wbps_woocommerce_keys');
delete_site_option('wbps_woocommerce_keys');
delete_option('wbps_sheet_props');
delete_site_option('wbps_sheet_props');
delete_option('wbps_authcode');
delete_site_option('wbps_authcode');
delete_option('wcgs_syncback_settings');
delete_site_option('wcgs_syncback_settings');
delete_option('wcgs_metadata_keys');
delete_site_option('wcgs_metadata_keys');
delete_option('wcgs_category_tags_data');
delete_site_option('wcgs_category_tags_data');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wbps_row_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wbps_row_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wbps_row_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wbps_row_id' ) );


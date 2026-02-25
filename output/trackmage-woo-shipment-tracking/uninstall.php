<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trackmage_client_id');
delete_site_option('trackmage_client_id');
delete_option('trackmage_client_secret');
delete_site_option('trackmage_client_secret');
delete_option('trackmage_workspace');
delete_site_option('trackmage_workspace');
delete_option('trackmage_sync_statuses');
delete_site_option('trackmage_sync_statuses');
delete_option('trackmage_sync_start_date');
delete_site_option('trackmage_sync_start_date');
delete_option('trackmage_trigger_sync');
delete_site_option('trackmage_trigger_sync');
delete_option('trackmage_delete_data');
delete_site_option('trackmage_delete_data');
delete_option('reset_plugin_settings');
delete_site_option('reset_plugin_settings');
delete_option('trackmage_integration');
delete_site_option('trackmage_integration');
delete_option('trackmage_webhook');
delete_site_option('trackmage_webhook');
delete_option('trackmage_team');
delete_site_option('trackmage_team');
delete_option('trackmage_webhook_username');
delete_site_option('trackmage_webhook_username');
delete_option('trackmage_webhook_password');
delete_site_option('trackmage_webhook_password');
delete_option('trackmage_order_status_aliases');
delete_site_option('trackmage_order_status_aliases');
delete_option('trackmage_custom_order_statuses');
delete_site_option('trackmage_custom_order_statuses');
delete_option('trackmage_modified_order_statuses');
delete_site_option('trackmage_modified_order_statuses');

// Delete Transients
delete_transient('trackmage-wizard-notice');
delete_site_transient('trackmage-wizard-notice');
delete_transient('trackmage_error');
delete_site_transient('trackmage_error');
delete_transient('trackmage-remove-integration-error');
delete_site_transient('trackmage-remove-integration-error');
delete_transient('trackmage_error_shown');
delete_site_transient('trackmage_error_shown');
delete_transient('trackmage_workspaces');
delete_site_transient('trackmage_workspaces');
delete_transient('trackmage_carriers');
delete_site_transient('trackmage_carriers');
delete_transient('trackmage_order_statuses');
delete_site_transient('trackmage_order_statuses');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_trackmage_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_trackmage_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_trackmage_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_trackmage_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'trackmage_carrier' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'trackmage_carrier' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'trackmage_carrier' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'trackmage_carrier' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'trackmage_tracking_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'trackmage_tracking_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'trackmage_tracking_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'trackmage_tracking_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_trackmage_tracking_page_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_trackmage_tracking_page_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_trackmage_tracking_page_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_trackmage_tracking_page_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_trackmage_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_trackmage_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_trackmage_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_trackmage_hash' ) );


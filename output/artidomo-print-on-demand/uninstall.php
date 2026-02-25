<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('artidomo_pod_version');
delete_site_option('artidomo_pod_version');
delete_option('artidomo_pod_installed_at');
delete_site_option('artidomo_pod_installed_at');
delete_option('artidomo_connected');
delete_site_option('artidomo_connected');
delete_option('artidomo_pod_migrated');
delete_site_option('artidomo_pod_migrated');
delete_option('artidomo_shop_id');
delete_site_option('artidomo_shop_id');
delete_option('artidomo_api_key_id');
delete_site_option('artidomo_api_key_id');
delete_option('artidomo_consumer_key');
delete_site_option('artidomo_consumer_key');
delete_option('artidomo_consumer_secret');
delete_site_option('artidomo_consumer_secret');
delete_option('artidomo_webhook_secret');
delete_site_option('artidomo_webhook_secret');
delete_option('artidomo_connected_at');
delete_site_option('artidomo_connected_at');
delete_option('artidomo_webhook_id');
delete_site_option('artidomo_webhook_id');
delete_option('artidomo_detected_plugins');
delete_site_option('artidomo_detected_plugins');
delete_option('artidomo_last_detection');
delete_site_option('artidomo_last_detection');

// Delete Transients
delete_transient('artidomo_connection_token');
delete_site_transient('artidomo_connection_token');
delete_transient('artidomo_plugin_update_info');
delete_site_transient('artidomo_plugin_update_info');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('artidomo_pod_custom_update');
delete_site_transient('artidomo_pod_custom_update');
delete_transient('artidomo_pod_wporg_update');
delete_site_transient('artidomo_pod_wporg_update');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_artidomo_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_artidomo_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_artidomo_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_artidomo_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_artidomo_printfilename' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_artidomo_printfilename' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_artidomo_printfilename' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_artidomo_printfilename' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_artidomo_personalization_provider' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_artidomo_personalization_provider' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_artidomo_personalization_provider' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_artidomo_personalization_provider' ) );


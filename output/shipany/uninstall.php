<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('woocommerce_shipany_service_locations_forbidden');
delete_site_option('woocommerce_shipany_service_locations_forbidden');
delete_option('woocommerce_shipany_ecs_asia_settings');
delete_site_option('woocommerce_shipany_ecs_asia_settings');
delete_option('order_list_counter');
delete_site_option('order_list_counter');
delete_option('_shipany_bulk_action_confirmation');
delete_site_option('_shipany_bulk_action_confirmation');
delete_option('shipany_permalinks_flushed');
delete_site_option('shipany_permalinks_flushed');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'shipany_handover_order_ids_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('shipany-selected-locationtype');
delete_site_option('shipany-selected-locationtype');
delete_option('shipany-selected-locationID');
delete_site_option('shipany-selected-locationID');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient__shipany_bulk_download_labels_file_%', '_site_transient__shipany_bulk_download_labels_file_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('_shipany_auth_token_rest');
delete_site_transient('_shipany_auth_token_rest');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pr_shipment_shipany_label_tracking' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pr_shipment_shipany_label_tracking' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pr_shipment_shipany_label_tracking' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pr_shipment_shipany_label_tracking' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_shipany_export_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_shipany_export_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_shipany_export_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_shipany_export_description' ) );


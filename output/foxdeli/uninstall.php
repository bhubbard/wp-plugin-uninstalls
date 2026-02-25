<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('foxdeli_delivery_agent_extra_services');
delete_site_option('foxdeli_delivery_agent_extra_services');
delete_option('foxdeli_delivery_customer_agents');
delete_site_option('foxdeli_delivery_customer_agents');
delete_option('foxdeli_delivery_extra_services');
delete_site_option('foxdeli_delivery_extra_services');
delete_option('foxdeli_delivery_collection_places');
delete_site_option('foxdeli_delivery_collection_places');
delete_option('foxdeli_admin_api_token');
delete_site_option('foxdeli_admin_api_token');
delete_option('foxdeli_admin_api_token_check');
delete_site_option('foxdeli_admin_api_token_check');
delete_option('foxdeli_admin_default_weight');
delete_site_option('foxdeli_admin_default_weight');
delete_option('foxdeli_admin_default_length');
delete_site_option('foxdeli_admin_default_length');
delete_option('foxdeli_admin_default_width');
delete_site_option('foxdeli_admin_default_width');
delete_option('foxdeli_admin_default_height');
delete_site_option('foxdeli_admin_default_height');
delete_option('foxdeli_delivery_data_last_load');
delete_site_option('foxdeli_delivery_data_last_load');
delete_option('foxdeli_admin_webhook_activated');
delete_site_option('foxdeli_admin_webhook_activated');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'foxdeli_admin_state_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'foxdeli_delivery_ticket_note' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'foxdeli_delivery_ticket_note' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'foxdeli_delivery_ticket_note' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'foxdeli_delivery_ticket_note' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'zasilkovna_id_dopravy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'zasilkovna_id_dopravy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'zasilkovna_id_dopravy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'zasilkovna_id_dopravy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'foxdeli_monitored_package_integration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'foxdeli_monitored_package_integration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'foxdeli_monitored_package_integration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'foxdeli_monitored_package_integration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'foxdeli_delivery_external_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'foxdeli_delivery_external_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'foxdeli_delivery_external_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'foxdeli_delivery_external_id' ) );


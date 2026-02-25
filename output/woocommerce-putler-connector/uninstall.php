<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('putler_connector_settings');
delete_site_option('putler_connector_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_last_updated' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('putler_connector_authenticated');
delete_site_option('putler_connector_authenticated');
delete_option('putler_connector_temp_token');
delete_site_option('putler_connector_temp_token');
delete_option('putler_connector_putler_temp_token');
delete_site_option('putler_connector_putler_temp_token');
delete_option('_wpc_activation_redirect');
delete_site_option('_wpc_activation_redirect');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('_wpc_update_redirect_2911');
delete_site_option('_wpc_update_redirect_2911');
delete_option('_wpc_update_redirect');
delete_site_option('_wpc_update_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_refund_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_refund_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_refund_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_refund_amount' ) );


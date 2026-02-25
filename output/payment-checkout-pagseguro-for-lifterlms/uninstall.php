<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('llms_gateway_pagseguro-v1_logging_enabled');
delete_site_option('llms_gateway_pagseguro-v1_logging_enabled');
delete_option('llms_gateway_pagseguro-v1_payment_instructions');
delete_site_option('llms_gateway_pagseguro-v1_payment_instructions');
delete_option('llms_gateway_pagseguro-v1_plugin_license');
delete_site_option('llms_gateway_pagseguro-v1_plugin_license');
delete_option('llms_gateway_pagseguro-v1_email');
delete_site_option('llms_gateway_pagseguro-v1_email');
delete_option('llms_gateway_pagseguro-v1_token_key');
delete_site_option('llms_gateway_pagseguro-v1_token_key');
delete_option('llms_gateway_pagseguro-v1_env_type');
delete_site_option('llms_gateway_pagseguro-v1_env_type');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_llms_order_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_llms_order_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_llms_order_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_llms_order_key' ) );


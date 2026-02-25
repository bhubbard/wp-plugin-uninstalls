<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('virtuaria_correios_installed');
delete_site_option('virtuaria_correios_installed');
delete_option('virtuaria_correios_error_token');
delete_site_option('virtuaria_correios_error_token');
delete_option('virtuaria_correios_contract');
delete_site_option('virtuaria_correios_contract');
delete_option('virtuaria_correios_nsu');
delete_site_option('virtuaria_correios_nsu');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('virtuaria_correios_settings');
delete_site_option('virtuaria_correios_settings');
delete_option('virtuaria_correios_extra_fields_settings');
delete_site_option('virtuaria_correios_extra_fields_settings');
delete_option('virtuaria_correios_display_install');
delete_site_option('virtuaria_correios_display_install');
delete_option('woocommerce_correios-integration_settings');
delete_site_option('woocommerce_correios-integration_settings');
delete_option('woocommerce_custom_orders_table_enabled');
delete_site_option('woocommerce_custom_orders_table_enabled');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_specific_allowed_countries');
delete_site_option('woocommerce_specific_allowed_countries');
delete_option('woocommerce_ship_to_countries');
delete_site_option('woocommerce_ship_to_countries');
delete_option('virtuaria_contract_info_fixed');
delete_site_option('virtuaria_contract_info_fixed');

// Delete Transients
delete_transient('virtuaria_correios_authenticated');
delete_site_transient('virtuaria_correios_authenticated');
delete_transient('virtuaria_correios_token');
delete_site_transient('virtuaria_correios_token');
delete_transient('virtuaria_correios_prepost_error');
delete_site_transient('virtuaria_correios_prepost_error');
delete_transient('virtuaria_correios_contract');
delete_site_transient('virtuaria_correios_contract');
delete_transient('virtuaria_correios_declaration_error');
delete_site_transient('virtuaria_correios_declaration_error');
delete_transient('virtuaria_correios_checkout_authenticated');
delete_site_transient('virtuaria_correios_checkout_authenticated');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_neighborhood' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_neighborhood' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_neighborhood' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_neighborhood' ) );


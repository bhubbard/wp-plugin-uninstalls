<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_default_customer_address');
delete_site_option('woocommerce_default_customer_address');
delete_option('fkwcs_wp_stripe');
delete_site_option('fkwcs_wp_stripe');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce-ppcp-settings');
delete_site_option('woocommerce-ppcp-settings');
delete_option('fkcart_settings');
delete_site_option('fkcart_settings');
delete_option('trp_settings');
delete_site_option('trp_settings');
delete_option('fkcart_db_options');
delete_site_option('fkcart_db_options');
delete_option('fkcart_db_options_new_db');
delete_site_option('fkcart_db_options_new_db');
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');
delete_option('woocommerce_tax_total_display');
delete_site_option('woocommerce_tax_total_display');

// Delete Transients
delete_transient('fkcart_templates_v3');
delete_site_transient('fkcart_templates_v3');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fkcart_notifications_close' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fkcart_notifications_close' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fkcart_notifications_close' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fkcart_notifications_close' ) );


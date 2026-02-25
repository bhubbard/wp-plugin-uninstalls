<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('product_assembly_enabled');
delete_site_option('product_assembly_enabled');
delete_option('product_assembly_cost');
delete_site_option('product_assembly_cost');
delete_option('product_assembly_cost_multiply');
delete_site_option('product_assembly_cost_multiply');
delete_option('product_assembly_message');
delete_site_option('product_assembly_message');
delete_option('product_assembly_service');
delete_site_option('product_assembly_service');
delete_option('product_assembly_cost_mode');
delete_site_option('product_assembly_cost_mode');
delete_option('product_assembly_tax_status');
delete_site_option('product_assembly_tax_status');
delete_option('product_assembly_tax_class');
delete_site_option('product_assembly_tax_class');
delete_option('product_assembly_add_to_name');
delete_site_option('product_assembly_add_to_name');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'woocommerce_tax_display_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}


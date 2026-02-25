<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('abovewp_bge_enabled');
delete_site_option('abovewp_bge_enabled');
delete_option('abovewp_bge_show_single_product');
delete_site_option('abovewp_bge_show_single_product');
delete_option('abovewp_bge_show_variable_product');
delete_site_option('abovewp_bge_show_variable_product');
delete_option('abovewp_bge_show_cart_item');
delete_site_option('abovewp_bge_show_cart_item');
delete_option('abovewp_bge_show_cart_subtotal');
delete_site_option('abovewp_bge_show_cart_subtotal');
delete_option('abovewp_bge_show_cart_total');
delete_site_option('abovewp_bge_show_cart_total');
delete_option('abovewp_bge_show_order_totals');
delete_site_option('abovewp_bge_show_order_totals');
delete_option('abovewp_bge_show_orders_table');
delete_site_option('abovewp_bge_show_orders_table');
delete_option('abovewp_bge_show_api_prices');
delete_site_option('abovewp_bge_show_api_prices');
delete_option('abovewp_bge_show_shipping_labels');
delete_site_option('abovewp_bge_show_shipping_labels');
delete_option('abovewp_bge_show_tax_labels');
delete_site_option('abovewp_bge_show_tax_labels');
delete_option('abovewp_bge_show_mini_cart');
delete_site_option('abovewp_bge_show_mini_cart');
delete_option('abovewp_bge_show_thank_you_page');
delete_site_option('abovewp_bge_show_thank_you_page');
delete_option('abovewp_bge_eur_position');
delete_site_option('abovewp_bge_eur_position');
delete_option('abovewp_bge_eur_format');
delete_site_option('abovewp_bge_eur_format');
delete_option('abovewp_bge_bgn_rounding');
delete_site_option('abovewp_bge_bgn_rounding');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'abovewp_bge_show_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');
delete_option('abovewp_bge_migration_in_progress');
delete_site_option('abovewp_bge_migration_in_progress');
delete_option('abovewp_bge_migration_offset');
delete_site_option('abovewp_bge_migration_offset');
delete_option('abovewp_bge_migration_total');
delete_site_option('abovewp_bge_migration_total');
delete_option('abovewp_bge_migration_last_error');
delete_site_option('abovewp_bge_migration_last_error');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('abovewp_bge_eur_label');
delete_site_option('abovewp_bge_eur_label');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'abovewp_migration_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'abovewp_migration_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'abovewp_migration_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'abovewp_migration_notice_dismissed' ) );


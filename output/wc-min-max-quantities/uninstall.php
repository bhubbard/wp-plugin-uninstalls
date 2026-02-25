<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_min_max_quantities_installed');
delete_site_option('wc_min_max_quantities_installed');
delete_option('woocommerce_enable_ajax_add_to_cart');
delete_site_option('woocommerce_enable_ajax_add_to_cart');
delete_option('wc_min_max_quantities_install_date');
delete_site_option('wc_min_max_quantities_install_date');
delete_option('wc_minmax_quantity_general_settings');
delete_site_option('wc_minmax_quantity_general_settings');
delete_option('wc_minmax_quantity_advanced_settings');
delete_site_option('wc_minmax_quantity_advanced_settings');
delete_option('wc_minmax_quantities_min_product_quantity');
delete_site_option('wc_minmax_quantities_min_product_quantity');
delete_option('wc_minmax_quantities_max_product_quantity');
delete_site_option('wc_minmax_quantities_max_product_quantity');
delete_option('wc_minmax_quantities_min_product_price');
delete_site_option('wc_minmax_quantities_min_product_price');
delete_option('wc_minmax_quantities_max_product_price');
delete_site_option('wc_minmax_quantities_max_product_price');
delete_option('wc_minmax_quantities_hide_checkout');
delete_site_option('wc_minmax_quantities_hide_checkout');
delete_option('wc_minmax_quantities_min_cart_total_price');
delete_site_option('wc_minmax_quantities_min_cart_total_price');
delete_option('wc_minmax_quantities_max_cart_total_price');
delete_site_option('wc_minmax_quantities_max_cart_total_price');
delete_option('wc_minmax_quantities_migrated_products');
delete_site_option('wc_minmax_quantities_migrated_products');
delete_option('wc_min_max_quantities_settings');
delete_site_option('wc_min_max_quantities_settings');
delete_option('wcmmq_step');
delete_site_option('wcmmq_step');
delete_option('wcmmq_min_qty');
delete_site_option('wcmmq_min_qty');
delete_option('wcmmq_max_qty');
delete_site_option('wcmmq_max_qty');
delete_option('wcmmq_min_cart_qty');
delete_site_option('wcmmq_min_cart_qty');
delete_option('wcmmq_max_cart_qty');
delete_site_option('wcmmq_max_cart_qty');
delete_option('wcmmq_min_cart_total');
delete_site_option('wcmmq_min_cart_total');
delete_option('wcmmq_max_cart_total');
delete_site_option('wcmmq_max_cart_total');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wc_minmax_quantitiess_install_date');
delete_site_option('wc_minmax_quantitiess_install_date');
delete_option('wc_min_max_quantities_version');
delete_site_option('wc_min_max_quantities_version');

// Delete Transients
delete_transient('wc_min_max_quantities_activated');
delete_site_transient('wc_min_max_quantities_activated');
delete_transient('wc_min_max_quantities_activation_redirect');
delete_site_transient('wc_min_max_quantities_activation_redirect');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wcmmq_enable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wcmmq_enable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wcmmq_enable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wcmmq_enable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wcmmq_disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wcmmq_disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wcmmq_disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wcmmq_disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wcmmq_step' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wcmmq_step' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wcmmq_step' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wcmmq_step' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wcmmq_min_qty' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wcmmq_min_qty' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wcmmq_min_qty' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wcmmq_min_qty' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wcmmq_max_qty' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wcmmq_max_qty' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wcmmq_max_qty' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wcmmq_max_qty' ) );


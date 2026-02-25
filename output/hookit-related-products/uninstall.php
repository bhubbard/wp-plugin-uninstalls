<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hookit_recommended_products_viewtitle');
delete_site_option('hookit_recommended_products_viewtitle');
delete_option('hookit_recommended_products_viewproducts');
delete_site_option('hookit_recommended_products_viewproducts');
delete_option('hookit_recommended_products_token');
delete_site_option('hookit_recommended_products_token');
delete_option('hookit_recommended_products_categories');
delete_site_option('hookit_recommended_products_categories');
delete_option('hookit_recommended_products_sign');
delete_site_option('hookit_recommended_products_sign');
delete_option('hookit_recommended_products_gender');
delete_site_option('hookit_recommended_products_gender');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_hookit_recommended_products_%', '_site_transient_hookit_recommended_products_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hookit_recommended_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hookit_recommended_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hookit_recommended_products' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hookit_recommended_products' ) );


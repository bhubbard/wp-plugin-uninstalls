<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_required_taxonomies_post_types');
delete_site_option('woocommerce_required_taxonomies_post_types');
delete_option('woocommerce_required_taxonomies_taxonomies');
delete_site_option('woocommerce_required_taxonomies_taxonomies');
delete_option('woocommerce_required_taxonomies_error_message');
delete_site_option('woocommerce_required_taxonomies_error_message');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'woocommerce_required_taxonomies_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}


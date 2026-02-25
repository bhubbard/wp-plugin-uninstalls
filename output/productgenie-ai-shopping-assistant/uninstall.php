<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pgai_website_id');
delete_site_option('pgai_website_id');
delete_option('pgai_secret_key');
delete_site_option('pgai_secret_key');
delete_option('pgai_sync_reviews');
delete_site_option('pgai_sync_reviews');
delete_option('pgai_widget_enabled');
delete_site_option('pgai_widget_enabled');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pgai_widget_show_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pgai_widget_show_home');
delete_site_option('pgai_widget_show_home');
delete_option('pgai_widget_show_product');
delete_site_option('pgai_widget_show_product');
delete_option('pgai_widget_show_shop');
delete_site_option('pgai_widget_show_shop');
delete_option('pgai_widget_show_cart');
delete_site_option('pgai_widget_show_cart');
delete_option('pgai_widget_show_checkout');
delete_site_option('pgai_widget_show_checkout');
delete_option('pgai_widget_show_posts');
delete_site_option('pgai_widget_show_posts');
delete_option('pgai_widget_show_pages');
delete_site_option('pgai_widget_show_pages');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rating' ) );


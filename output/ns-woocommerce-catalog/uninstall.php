<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcatalog_reviews_installed_on');
delete_site_option('wcatalog_reviews_installed_on');
delete_option('wcatalog_total_open_count');
delete_site_option('wcatalog_total_open_count');
delete_option('wcf_enabled_plugin');
delete_site_option('wcf_enabled_plugin');
delete_option('wcf_hide_cart_button_single_product');
delete_site_option('wcf_hide_cart_button_single_product');
delete_option('wcf_hide_cart_button_all_product');
delete_site_option('wcf_hide_cart_button_all_product');
delete_option('wcf_hide_cart_checkout_page');
delete_site_option('wcf_hide_cart_checkout_page');
delete_option('wcf_show_more_info_button');
delete_site_option('wcf_show_more_info_button');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pe-plugin-id-response-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'plugineye_init%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wcatalog_reviews_dismissed_triggers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wcatalog_reviews_dismissed_triggers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wcatalog_reviews_dismissed_triggers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wcatalog_reviews_dismissed_triggers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wcatalog_reviews_last_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wcatalog_reviews_last_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wcatalog_reviews_last_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wcatalog_reviews_last_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wcatalog_reviews_already_did' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wcatalog_reviews_already_did' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wcatalog_reviews_already_did' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wcatalog_reviews_already_did' ) );


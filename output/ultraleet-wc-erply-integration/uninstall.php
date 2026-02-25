<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcerply_api_error');
delete_site_option('wcerply_api_error');
delete_option('wcerply_sync_enabled');
delete_site_option('wcerply_sync_enabled');
delete_option('wcerply_installation_id');
delete_site_option('wcerply_installation_id');
delete_option('wcerply_product_term_map');
delete_site_option('wcerply_product_term_map');
delete_option('wcerply_vat_rates_map');
delete_site_option('wcerply_vat_rates_map');
delete_option('wcerply_stats_total_categories');
delete_site_option('wcerply_stats_total_categories');
delete_option('wcerply_stats_total_products');
delete_site_option('wcerply_stats_total_products');
delete_option('woocommerce_enable_reviews');
delete_site_option('woocommerce_enable_reviews');
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('wcerply_stats_total_variations');
delete_site_option('wcerply_stats_total_variations');

// Delete Transients
delete_transient('wcerply_generating_queue');
delete_site_transient('wcerply_generating_queue');
delete_transient('wcerply_license_notice');
delete_site_transient('wcerply_license_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('wcerply_queue');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_erply_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_erply_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_erply_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_erply_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_attachment_filename' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_attachment_filename' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_attachment_filename' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_attachment_filename' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'order' ) );


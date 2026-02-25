<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iyzico_overlay_token');
delete_site_option('iyzico_overlay_token');
delete_option('iyzicoWebhookUrlKey');
delete_site_option('iyzicoWebhookUrlKey');
delete_option('iyzico_google_products_xml_last_update');
delete_site_option('iyzico_google_products_xml_last_update');
delete_option('iyzico_google_products_next_send_time');
delete_site_option('iyzico_google_products_next_send_time');
delete_option('iyzico_google_products_xml_url');
delete_site_option('iyzico_google_products_xml_url');
delete_option('iyzico_google_products_retry_data');
delete_site_option('iyzico_google_products_retry_data');
delete_option('iyzico_google_products_last_sent');
delete_site_option('iyzico_google_products_last_sent');
delete_option('iyziTLS');
delete_site_option('iyziTLS');
delete_option('iyzico_overlay_position');
delete_site_option('iyzico_overlay_position');
delete_option('iyzico_thank_you');
delete_site_option('iyzico_thank_you');
delete_option('init_active_webhook_url');
delete_site_option('init_active_webhook_url');

// Clear Cron Jobs
wp_clear_scheduled_hook('iyzico_generate_google_products_xml');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_brand' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_brand' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_brand' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_brand' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_gtin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_gtin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_gtin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_gtin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mpn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mpn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mpn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mpn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_google_product_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_google_product_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_google_product_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_google_product_category' ) );


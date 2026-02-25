<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('api_key');
delete_site_option('api_key');
delete_option('no_books');
delete_site_option('no_books');
delete_option('no_book');
delete_site_option('no_book');
delete_option('service_url');
delete_site_option('service_url');
delete_option('api_source');
delete_site_option('api_source');
delete_option('typesense_catalog');
delete_site_option('typesense_catalog');
delete_option('typesense_api_key');
delete_site_option('typesense_api_key');
delete_option('typesense_host');
delete_site_option('typesense_host');
delete_option('widget_book_link_page');
delete_site_option('widget_book_link_page');
delete_option('widget_book_link_pattern');
delete_site_option('widget_book_link_pattern');
delete_option('product_details_cache_lifetime');
delete_site_option('product_details_cache_lifetime');
delete_option('search_results_cache_lifetime');
delete_site_option('search_results_cache_lifetime');
delete_option('isbn_lookups_cache_lifetime');
delete_site_option('isbn_lookups_cache_lifetime');
delete_option('product_details_seo_title');
delete_site_option('product_details_seo_title');
delete_option('product_details_seo_description');
delete_site_option('product_details_seo_description');
delete_option('product_details_seo_canonical');
delete_site_option('product_details_seo_canonical');
delete_option('widget_retailer_name');
delete_site_option('widget_retailer_name');
delete_option('retailer_image');
delete_site_option('retailer_image');
delete_option('widget_retailer_link_pattern');
delete_site_option('widget_retailer_link_pattern');
delete_option('widget_retailer_tracking_pattern');
delete_site_option('widget_retailer_tracking_pattern');
delete_option('retailer_link_formats');
delete_site_option('retailer_link_formats');
delete_option('supapress');
delete_site_option('supapress');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_widget_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_widget_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_widget_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_widget_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_%' ) );


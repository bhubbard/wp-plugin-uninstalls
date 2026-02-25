<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('beeking_search_api_key');
delete_site_option('beeking_search_api_key');
delete_option('beeking_search_use_ai');
delete_site_option('beeking_search_use_ai');
delete_option('beeking_search_debounce_time');
delete_site_option('beeking_search_debounce_time');
delete_option('beeking_search_show_price');
delete_site_option('beeking_search_show_price');
delete_option('beeking_search_show_category');
delete_site_option('beeking_search_show_category');
delete_option('beeking_search_show_brand');
delete_site_option('beeking_search_show_brand');
delete_option('beeking_search_advanced_filters');
delete_site_option('beeking_search_advanced_filters');
delete_option('beeking_search_enable_price_filter');
delete_site_option('beeking_search_enable_price_filter');
delete_option('beeking_search_enable_category_filter');
delete_site_option('beeking_search_enable_category_filter');
delete_option('beeking_search_enable_tags_filter');
delete_site_option('beeking_search_enable_tags_filter');
delete_option('beeking_search_enable_brand_filter');
delete_site_option('beeking_search_enable_brand_filter');
delete_option('beeking_search_enable_availability_filter');
delete_site_option('beeking_search_enable_availability_filter');
delete_option('beeking_search_top_offset');
delete_site_option('beeking_search_top_offset');
delete_option('beeking_search_button_bg_color');
delete_site_option('beeking_search_button_bg_color');
delete_option('beeking_search_text_color');
delete_site_option('beeking_search_text_color');
delete_option('beeking_search_debug');
delete_site_option('beeking_search_debug');
delete_option('beeking_search_placeholder_text');
delete_site_option('beeking_search_placeholder_text');
delete_option('beeking_search_related_heading');
delete_site_option('beeking_search_related_heading');
delete_option('beeking_api_key_valid');
delete_site_option('beeking_api_key_valid');
delete_option('beeking_search_floating_enabled');
delete_site_option('beeking_search_floating_enabled');
delete_option('beeking_search_replace_enabled');
delete_site_option('beeking_search_replace_enabled');
delete_option('beeking_search_mobile_fullscreen');
delete_site_option('beeking_search_mobile_fullscreen');
delete_option('beeking_block_mobile_fullscreen');
delete_site_option('beeking_block_mobile_fullscreen');

// Delete Transients
delete_transient('beeking_currency_symbol');
delete_site_transient('beeking_currency_symbol');
delete_transient('beeking_price_range');
delete_site_transient('beeking_price_range');
delete_transient('beeking_current_sync_id');
delete_site_transient('beeking_current_sync_id');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_brand' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_brand' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_brand' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_brand' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'total_sales' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'total_sales' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'total_sales' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'total_sales' ) );


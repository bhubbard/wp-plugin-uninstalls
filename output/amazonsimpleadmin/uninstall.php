<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_asa_db_collections_version');
delete_site_option('_asa_db_collections_version');
delete_option('_asa_hide_meta_link');
delete_site_option('_asa_hide_meta_link');
delete_option('_asa_error_email_notification');
delete_site_option('_asa_error_email_notification');
delete_option('_asa_first_activation');
delete_site_option('_asa_first_activation');
delete_option('_asa_cache_active');
delete_site_option('_asa_cache_active');
delete_option('_asa_cache_skip_on_admin');
delete_site_option('_asa_cache_skip_on_admin');
delete_option('_asa_product_preview');
delete_site_option('_asa_product_preview');
delete_option('_asa_use_flat_box_default');
delete_site_option('_asa_use_flat_box_default');
delete_option('_asa_parse_comments');
delete_site_option('_asa_parse_comments');
delete_option('_asa_async_load');
delete_site_option('_asa_async_load');
delete_option('_asa_ajax_css_ani');
delete_site_option('_asa_ajax_css_ani');
delete_option('_asa_use_short_amazon_links');
delete_site_option('_asa_use_short_amazon_links');
delete_option('_asa_use_amazon_price_only');
delete_site_option('_asa_use_amazon_price_only');
delete_option('_asa_debug');
delete_site_option('_asa_debug');
delete_option('_asa_get_rating_alternative');
delete_site_option('_asa_get_rating_alternative');
delete_option('_asa_custom_widget_class');
delete_site_option('_asa_custom_widget_class');
delete_option('_asa_replace_empty_main_price');
delete_site_option('_asa_replace_empty_main_price');
delete_option('_asa_disable_prefetch');
delete_site_option('_asa_disable_prefetch');
delete_option('_asa_error_handling');
delete_site_option('_asa_error_handling');
delete_option('_asa_admin_error_frontend');
delete_site_option('_asa_admin_error_frontend');
delete_option('_asa_use_error_tpl');
delete_site_option('_asa_use_error_tpl');
delete_option('_asa_error_email_notification_bridge_page_id');
delete_site_option('_asa_error_email_notification_bridge_page_id');
delete_option('_asa_cache_lifetime');
delete_site_option('_asa_cache_lifetime');
delete_option('_asa_cache_dir');
delete_site_option('_asa_cache_dir');
delete_option('_asa_cache_disable_variable_lifetime');
delete_site_option('_asa_cache_disable_variable_lifetime');
delete_option('_asa_amazon_api_key');
delete_site_option('_asa_amazon_api_key');
delete_option('_asa_amazon_api_secret_key');
delete_site_option('_asa_amazon_api_secret_key');
delete_option('_asa_amazon_tracking_id');
delete_site_option('_asa_amazon_tracking_id');
delete_option('_asa_api_connection_type');
delete_site_option('_asa_api_connection_type');
delete_option('_asa_pa_api_version');
delete_site_option('_asa_pa_api_version');
delete_option('_asa_amazon_country_code');
delete_site_option('_asa_amazon_country_code');
delete_option('_asa_donated');
delete_site_option('_asa_donated');
delete_option('_asa_newsletter');
delete_site_option('_asa_newsletter');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'error-code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'error-code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'error-code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'error-code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'error-message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'error-message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'error-message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'error-message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'error-asin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'error-asin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'error-asin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'error-asin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'error-location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'error-location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'error-location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'error-location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );


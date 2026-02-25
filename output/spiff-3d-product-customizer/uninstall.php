<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spiff_infrastructure');
delete_site_option('spiff_infrastructure');
delete_option('spiff_plugin_was_activated');
delete_site_option('spiff_plugin_was_activated');
delete_option('spiff_api_key');
delete_site_option('spiff_api_key');
delete_option('spiff_api_secret');
delete_site_option('spiff_api_secret');
delete_option('spiff_application_key');
delete_site_option('spiff_application_key');
delete_option('spiff_show_customer_selections_in_cart');
delete_site_option('spiff_show_customer_selections_in_cart');
delete_option('spiff_show_preview_images_in_cart');
delete_site_option('spiff_show_preview_images_in_cart');
delete_option('spiff_non_bulk_text');
delete_site_option('spiff_non_bulk_text');
delete_option('spiff_font_size');
delete_site_option('spiff_font_size');
delete_option('spiff_font_weight');
delete_site_option('spiff_font_weight');
delete_option('spiff_text_color');
delete_site_option('spiff_text_color');
delete_option('spiff_background_color');
delete_site_option('spiff_background_color');
delete_option('spiff_width');
delete_site_option('spiff_width');
delete_option('spiff_height');
delete_site_option('spiff_height');
delete_option('spiff_customer_portal_button_text');
delete_site_option('spiff_customer_portal_button_text');
delete_option('spiff_customer_portal_button_font_size');
delete_site_option('spiff_customer_portal_button_font_size');
delete_option('spiff_customer_portal_button_font_weight');
delete_site_option('spiff_customer_portal_button_font_weight');
delete_option('spiff_customer_portal_button_text_color');
delete_site_option('spiff_customer_portal_button_text_color');
delete_option('spiff_customer_portal_button_background_color');
delete_site_option('spiff_customer_portal_button_background_color');
delete_option('spiff_customer_portal_button_width');
delete_site_option('spiff_customer_portal_button_width');
delete_option('spiff_customer_portal_button_height');
delete_site_option('spiff_customer_portal_button_height');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_wooaddtocart_settings_button_bg_color');
delete_site_option('_wooaddtocart_settings_button_bg_color');
delete_option('_wooaddtocart_settings_button_text_color');
delete_site_option('_wooaddtocart_settings_button_text_color');
delete_option('_wooaddtocart_settings_button_border_color');
delete_site_option('_wooaddtocart_settings_button_border_color');
delete_option('_wooaddtocart_settings_button_hover_color');
delete_site_option('_wooaddtocart_settings_button_hover_color');
delete_option('_wooaddtocart_settings_button_border_size');
delete_site_option('_wooaddtocart_settings_button_border_size');
delete_option('_wooaddtocart_settings_button_radius_size');
delete_site_option('_wooaddtocart_settings_button_radius_size');
delete_option('_wooaddtocart_settings_button_font_size');
delete_site_option('_wooaddtocart_settings_button_font_size');
delete_option('_wooaddtocart_settings_button_type');
delete_site_option('_wooaddtocart_settings_button_type');
delete_option('wooaddtocart_settings_button_padding_top');
delete_site_option('wooaddtocart_settings_button_padding_top');
delete_option('wooaddtocart_settings_button_padding_bottom');
delete_site_option('wooaddtocart_settings_button_padding_bottom');
delete_option('wooaddtocart_settings_button_padding_right');
delete_site_option('wooaddtocart_settings_button_padding_right');
delete_option('wooaddtocart_settings_button_padding_left');
delete_site_option('wooaddtocart_settings_button_padding_left');
delete_option('_wooaddtocart_settings_button_icon');
delete_site_option('_wooaddtocart_settings_button_icon');
delete_option('_wooaddtocart_settings_button_icon_position');
delete_site_option('_wooaddtocart_settings_button_icon_position');
delete_option('_wooaddtocart_settings_button_hide');
delete_site_option('_wooaddtocart_settings_button_hide');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wooaddtocart_product_hide_cart_button' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wooaddtocart_product_hide_cart_button' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wooaddtocart_product_hide_cart_button' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wooaddtocart_product_hide_cart_button' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wooaddtocart_product_cart_button_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wooaddtocart_product_cart_button_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wooaddtocart_product_cart_button_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wooaddtocart_product_cart_button_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wooaddtocart_product_hide_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wooaddtocart_product_hide_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wooaddtocart_product_hide_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wooaddtocart_product_hide_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'atcbc-notice-dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'atcbc-notice-dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'atcbc-notice-dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'atcbc-notice-dismissed' ) );


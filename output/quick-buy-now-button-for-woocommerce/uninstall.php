<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wbnb_enable_product_types');
delete_site_option('wbnb_enable_product_types');
delete_option('wbnb_enable_button_single');
delete_site_option('wbnb_enable_button_single');
delete_option('wbnb_enable_button_archive');
delete_site_option('wbnb_enable_button_archive');
delete_option('wbnb_redirect_location');
delete_site_option('wbnb_redirect_location');
delete_option('wbnb_ajax_add_to_cart');
delete_site_option('wbnb_ajax_add_to_cart');
delete_option('wbnb_button_style');
delete_site_option('wbnb_button_style');
delete_option('wbnb_button_color');
delete_site_option('wbnb_button_color');
delete_option('wbnb_button_background');
delete_site_option('wbnb_button_background');
delete_option('wbnb_button_border_color');
delete_site_option('wbnb_button_border_color');
delete_option('wbnb_button_border_size');
delete_site_option('wbnb_button_border_size');
delete_option('wbnb_button_border_radius');
delete_site_option('wbnb_button_border_radius');
delete_option('wbnb_button_font_size');
delete_site_option('wbnb_button_font_size');
delete_option('wbnb_button_margin');
delete_site_option('wbnb_button_margin');
delete_option('wbnb_button_padding');
delete_site_option('wbnb_button_padding');
delete_option('wbnb_reset_cart');
delete_site_option('wbnb_reset_cart');
delete_option('wbnb_button_position_single');
delete_site_option('wbnb_button_position_single');
delete_option('wbnb_button_position_archive');
delete_site_option('wbnb_button_position_archive');
delete_option('wbnb_custom_redirect_url');
delete_site_option('wbnb_custom_redirect_url');
delete_option('wbnb_button_text');
delete_site_option('wbnb_button_text');
delete_option('wbnb_default_qnt');
delete_site_option('wbnb_default_qnt');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'is_buy_now_button_disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'is_buy_now_button_disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'is_buy_now_button_disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'is_buy_now_button_disable' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'is_add_to_cart_hide' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'is_add_to_cart_hide' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'is_add_to_cart_hide' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'is_add_to_cart_hide' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'is_quantity_hide' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'is_quantity_hide' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'is_quantity_hide' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'is_quantity_hide' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'default_qnt_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'default_qnt_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'default_qnt_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'default_qnt_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'buy_now_button_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'buy_now_button_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'buy_now_button_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'buy_now_button_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'buy_now_redirect_location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'buy_now_redirect_location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'buy_now_redirect_location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'buy_now_redirect_location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'buy_now_redirect_custom_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'buy_now_redirect_custom_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'buy_now_redirect_custom_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'buy_now_redirect_custom_link' ) );


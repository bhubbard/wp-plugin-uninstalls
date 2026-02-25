<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_enable_ajax_add_to_cart');
delete_site_option('woocommerce_enable_ajax_add_to_cart');
delete_option('woocommerce_cart_redirect_after_add');
delete_site_option('woocommerce_cart_redirect_after_add');
delete_option('woocommerce_enable_shipping_calc');
delete_site_option('woocommerce_enable_shipping_calc');
delete_option('wps_wcp_global_icon_bck_color');
delete_site_option('wps_wcp_global_icon_bck_color');
delete_option('wps_wcp_global_icon_hover_bck_color');
delete_site_option('wps_wcp_global_icon_hover_bck_color');
delete_option('wps_wcp_popup_footer_button');
delete_site_option('wps_wcp_popup_footer_button');
delete_option('wps_wcp_popup_bck_color');
delete_site_option('wps_wcp_popup_bck_color');
delete_option('wps_wcp_popup_css');
delete_site_option('wps_wcp_popup_css');
delete_option('wps_wcp_popup_header_text');
delete_site_option('wps_wcp_popup_header_text');
delete_option('wps_wcp_popup_footer_text');
delete_site_option('wps_wcp_popup_footer_text');
delete_option('wps_wcp_global_icon');
delete_site_option('wps_wcp_global_icon');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wps_premium_buy_notice_checkoutpopup2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wps_premium_buy_notice_checkoutpopup2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wps_premium_buy_notice_checkoutpopup2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wps_premium_buy_notice_checkoutpopup2' ) );


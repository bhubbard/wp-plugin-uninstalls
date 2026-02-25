<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('caddy_premium_edd_license_status');
delete_site_option('caddy_premium_edd_license_status');
delete_option('cc_dismiss_welcome_notice');
delete_site_option('cc_dismiss_welcome_notice');
delete_option('cc_disable_branding');
delete_site_option('cc_disable_branding');
delete_option('cc_affiliate_id');
delete_site_option('cc_affiliate_id');
delete_option('cc_menu_cart_widget');
delete_site_option('cc_menu_cart_widget');
delete_option('cc_menu_saves_widget');
delete_site_option('cc_menu_saves_widget');
delete_option('cc_free_shipping_amount');
delete_site_option('cc_free_shipping_amount');
delete_option('cc_free_shipping_tax');
delete_site_option('cc_free_shipping_tax');
delete_option('cc_shipping_country');
delete_site_option('cc_shipping_country');
delete_option('cc_product_recommendation');
delete_site_option('cc_product_recommendation');
delete_option('cc_product_recommendation_type');
delete_site_option('cc_product_recommendation_type');
delete_option('cc_enable_sfl_options');
delete_site_option('cc_enable_sfl_options');
delete_option('cc_custom_css');
delete_site_option('cc_custom_css');
delete_option('caddy_install_date');
delete_site_option('caddy_install_date');
delete_option('caddy_version');
delete_site_option('caddy_version');
delete_option('cc_sfl_btn_on_product');
delete_site_option('cc_sfl_btn_on_product');
delete_option('cp_mobile_notices');
delete_site_option('cp_mobile_notices');
delete_option('cp_desktop_notices');
delete_site_option('cp_desktop_notices');
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');

// Delete Transients
delete_transient('caddy_ann_license_status');
delete_site_transient('caddy_ann_license_status');
delete_transient('ga_tracking_license_status');
delete_site_transient('ga_tracking_license_status');
delete_transient('caddy_settings_updated');
delete_site_transient('caddy_settings_updated');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cc_dismiss_user_optin_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cc_dismiss_user_optin_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cc_dismiss_user_optin_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cc_dismiss_user_optin_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_caddy_recommendations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_caddy_recommendations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_caddy_recommendations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_caddy_recommendations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cc_save_for_later_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cc_save_for_later_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cc_save_for_later_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cc_save_for_later_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sale_price' ) );


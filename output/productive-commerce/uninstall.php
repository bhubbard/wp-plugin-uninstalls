<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('productive_global_section_following_options');
delete_site_option('productive_global_section_following_options');
delete_option('productive_global_section_grid_options');
delete_site_option('productive_global_section_grid_options');
delete_option('productive_global_section_misc_options');
delete_site_option('productive_global_section_misc_options');
delete_option('productive_global_section_popup_options');
delete_site_option('productive_global_section_popup_options');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('productive_global_section_sharing_options');
delete_site_option('productive_global_section_sharing_options');
delete_option('productive_global_section_slider_options');
delete_site_option('productive_global_section_slider_options');
delete_option('productive_commerce_section_integration_options');
delete_site_option('productive_commerce_section_integration_options');
delete_option('productive_commerce_section_compare_options');
delete_site_option('productive_commerce_section_compare_options');
delete_option('productive_commerce_section_minicart_options');
delete_site_option('productive_commerce_section_minicart_options');
delete_option('productive_commerce_section_wishlist_options');
delete_site_option('productive_commerce_section_wishlist_options');
delete_option('woocommerce_cart_redirect_after_add');
delete_site_option('woocommerce_cart_redirect_after_add');
delete_option('_transient_productive_commerce');
delete_site_option('_transient_productive_commerce');
delete_option('_transient_timeout_productive_commerce');
delete_site_option('_transient_timeout_productive_commerce');
delete_option('productive_commerce_section_quickview_options');
delete_site_option('productive_commerce_section_quickview_options');
delete_option('productive_commerce_section_miniwishlist_options');
delete_site_option('productive_commerce_section_miniwishlist_options');
delete_option('woocommerce_enable_ajax_add_to_cart');
delete_site_option('woocommerce_enable_ajax_add_to_cart');
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'productive_user_follow_site_1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'productive_user_follow_site_1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'productive_user_follow_site_1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'productive_user_follow_site_1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'productive_user_follow_site_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'productive_user_follow_site_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'productive_user_follow_site_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'productive_user_follow_site_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'productive_user_follow_site_3' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'productive_user_follow_site_3' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'productive_user_follow_site_3' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'productive_user_follow_site_3' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'productive_user_follow_site_4' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'productive_user_follow_site_4' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'productive_user_follow_site_4' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'productive_user_follow_site_4' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'productive_user_follow_site_5' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'productive_user_follow_site_5' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'productive_user_follow_site_5' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'productive_user_follow_site_5' ) );


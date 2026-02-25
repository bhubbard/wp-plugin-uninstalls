<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wishlist_settings');
delete_site_option('wishlist_settings');
delete_option('pickplugins_wl_default_wishlist_id');
delete_site_option('pickplugins_wl_default_wishlist_id');
delete_option('pickplugins_wl_wishlist_page');
delete_site_option('pickplugins_wl_wishlist_page');
delete_option('pickplugins_wl_enable_wc_shop');
delete_site_option('pickplugins_wl_enable_wc_shop');
delete_option('pickplugins_wl_wc_shop_on');
delete_site_option('pickplugins_wl_wc_shop_on');
delete_option('pickplugins_wl_enable_wc_product');
delete_site_option('pickplugins_wl_enable_wc_product');
delete_option('pickplugins_wl_wc_product_under');
delete_site_option('pickplugins_wl_wc_product_under');
delete_option('pickplugins_wl_breadcrumb_enable');
delete_site_option('pickplugins_wl_breadcrumb_enable');
delete_option('pickplugins_wl_breadcrumb_home_text');
delete_site_option('pickplugins_wl_breadcrumb_home_text');
delete_option('pickplugins_wl_breadcrumb_text_color');
delete_site_option('pickplugins_wl_breadcrumb_text_color');
delete_option('pickplugins_wl_list_per_page');
delete_site_option('pickplugins_wl_list_per_page');
delete_option('pickplugins_wl_list_items_per_page');
delete_site_option('pickplugins_wl_list_items_per_page');
delete_option('pickplugins_wl_button_font_size');
delete_site_option('pickplugins_wl_button_font_size');
delete_option('pickplugins_wl_button_color_normal');
delete_site_option('pickplugins_wl_button_color_normal');
delete_option('pickplugins_wl_button_color_active');
delete_site_option('pickplugins_wl_button_color_active');
delete_option('wishlist_heart_icon_html');
delete_site_option('wishlist_heart_icon_html');
delete_option('wishlist_heart_loading_icon_html');
delete_site_option('wishlist_heart_loading_icon_html');
delete_option('pickplugins_wl_views_display');
delete_site_option('pickplugins_wl_views_display');
delete_option('pickplugins_wl_vote_enable');
delete_site_option('pickplugins_wl_vote_enable');
delete_option('pickplugins_wl_share_enable');
delete_site_option('pickplugins_wl_share_enable');
delete_option('pickplugins_wl_social_platforms');
delete_site_option('pickplugins_wl_social_platforms');
delete_option('wishlist_plugin_info');
delete_site_option('wishlist_plugin_info');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wishlist_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wishlist_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wishlist_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wishlist_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wishlist_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wishlist_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wishlist_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wishlist_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pickplugins_wl_votes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pickplugins_wl_votes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pickplugins_wl_votes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pickplugins_wl_votes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pickplugins_wl_views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pickplugins_wl_views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pickplugins_wl_views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pickplugins_wl_views' ) );


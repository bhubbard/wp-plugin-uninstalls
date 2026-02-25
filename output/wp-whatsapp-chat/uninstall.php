<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('whatsapp_chat_page');
delete_site_option('whatsapp_chat_page');
delete_option('whatsapp_chat_button');
delete_site_option('whatsapp_chat_button');
delete_option('whatsapp_chat_powered_by');
delete_site_option('whatsapp_chat_powered_by');
delete_option('whatsapp_chat_round');
delete_site_option('whatsapp_chat_round');
delete_option('whatsapp_chat_down');
delete_site_option('whatsapp_chat_down');
delete_option('whatsapp_chat_left_side');
delete_site_option('whatsapp_chat_left_side');
delete_option('whatsapp_chat_msg');
delete_site_option('whatsapp_chat_msg');
delete_option('whatsapp_chat_mobile');
delete_site_option('whatsapp_chat_mobile');
delete_option('whatsapp_chat_hide_button');
delete_site_option('whatsapp_chat_hide_button');
delete_option('whatsapp_chat_hide_post');
delete_site_option('whatsapp_chat_hide_post');
delete_option('whatsapp_chat_hide_page');
delete_site_option('whatsapp_chat_hide_page');
delete_option('whatsapp_chat_dark');
delete_site_option('whatsapp_chat_dark');
delete_option('whatsapp_chat_white');
delete_site_option('whatsapp_chat_white');
delete_option('qlwapp');
delete_site_option('qlwapp');
delete_option('jetpack_protect_active');
delete_site_option('jetpack_protect_active');
delete_option('jetpack_offline_mode');
delete_site_option('jetpack_offline_mode');
delete_option('wpcom_public_coming_soon');
delete_site_option('wpcom_public_coming_soon');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');
delete_option('qlwapp_box');
delete_site_option('qlwapp_box');
delete_option('qlwapp_button');
delete_site_option('qlwapp_button');
delete_option('qlwapp_contacts');
delete_site_option('qlwapp_contacts');
delete_option('qlwapp_display');
delete_site_option('qlwapp_display');
delete_option('qlwapp_scheme');
delete_site_option('qlwapp_scheme');
delete_option('qlwapp_settings');
delete_site_option('qlwapp_settings');
delete_option('qlwapp_woocommerce');
delete_site_option('qlwapp_woocommerce');

// Delete Transients
delete_transient('jetpack_is_single_user');
delete_site_transient('jetpack_is_single_user');
delete_transient('quadlayers_news_feed');
delete_site_transient('quadlayers_news_feed');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ql_plugin_feedback_%', '_site_transient_ql_plugin_feedback_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'qlwapp-user-rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'qlwapp-user-rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'qlwapp-user-rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'qlwapp-user-rating' ) );


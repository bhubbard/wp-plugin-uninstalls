<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('webpushr_private_key');
delete_site_option('webpushr_private_key');
delete_option('webpushr_auth_token');
delete_site_option('webpushr_auth_token');
delete_option('webpushr_public_key');
delete_site_option('webpushr_public_key');
delete_option('wpp_enable_for_post');
delete_site_option('wpp_enable_for_post');
delete_option('wpp_default_for_post');
delete_site_option('wpp_default_for_post');
delete_option('wpp_default_for_post_update');
delete_site_option('wpp_default_for_post_update');
delete_option('wpp_post_message');
delete_site_option('wpp_post_message');
delete_option('wpp_post_title');
delete_site_option('wpp_post_title');
delete_option('wpp_post_type');
delete_site_option('wpp_post_type');
delete_option('wpp_auto_hide');
delete_site_option('wpp_auto_hide');
delete_option('wpp_post_image');
delete_site_option('wpp_post_image');
delete_option('wpp_post_icon');
delete_site_option('wpp_post_icon');
delete_option('wpp_post_sendTo');
delete_site_option('wpp_post_sendTo');
delete_option('wpp_disable_prompt_code');
delete_site_option('wpp_disable_prompt_code');
delete_option('webpushr_enable_woo_new_prod');
delete_site_option('webpushr_enable_woo_new_prod');
delete_option('webpushr_woo_new_prod_title');
delete_site_option('webpushr_woo_new_prod_title');
delete_option('webpushr_woo_new_prod_message');
delete_site_option('webpushr_woo_new_prod_message');
delete_option('webpushr_woo_prod_icon');
delete_site_option('webpushr_woo_prod_icon');
delete_option('webpushr_woo_prod_image');
delete_site_option('webpushr_woo_prod_image');
delete_option('webpushr_woo_prod_url');
delete_site_option('webpushr_woo_prod_url');
delete_option('webpushr_woo_price_drop_title');
delete_site_option('webpushr_woo_price_drop_title');
delete_option('webpushr_woo_price_drop_message');
delete_site_option('webpushr_woo_price_drop_message');
delete_option('webpushr_woo_price_drop_icon');
delete_site_option('webpushr_woo_price_drop_icon');
delete_option('webpushr_woo_price_drop_image');
delete_site_option('webpushr_woo_price_drop_image');
delete_option('webpushr_woo_price_drop_url');
delete_site_option('webpushr_woo_price_drop_url');
delete_option('webpushr_woo_sale_title');
delete_site_option('webpushr_woo_sale_title');
delete_option('webpushr_woo_sale_message');
delete_site_option('webpushr_woo_sale_message');
delete_option('webpushr_woo_sale_icon');
delete_site_option('webpushr_woo_sale_icon');
delete_option('webpushr_woo_sale_image');
delete_site_option('webpushr_woo_sale_image');
delete_option('webpushr_woo_sale_url');
delete_site_option('webpushr_woo_sale_url');
delete_option('webpushr_enable_abandoned_cart');
delete_site_option('webpushr_enable_abandoned_cart');
delete_option('webpushr_woo_abandoned_cart_title');
delete_site_option('webpushr_woo_abandoned_cart_title');
delete_option('webpushr_woo_abandoned_cart_message');
delete_site_option('webpushr_woo_abandoned_cart_message');
delete_option('webpushr_woo_abandoned_cart_icon');
delete_site_option('webpushr_woo_abandoned_cart_icon');
delete_option('webpushr_woo_abandoned_cart_image');
delete_site_option('webpushr_woo_abandoned_cart_image');
delete_option('webpushr_woo_abandoned_cart_url');
delete_site_option('webpushr_woo_abandoned_cart_url');
delete_option('webpushr_woo_abandoned_cart_frequency');
delete_site_option('webpushr_woo_abandoned_cart_frequency');
delete_option('webpushr_woo_abandoned_cart_interval');
delete_site_option('webpushr_woo_abandoned_cart_interval');
delete_option('wpp_utm_parameter');
delete_site_option('wpp_utm_parameter');
delete_option('webpushr_woo_price_drop_show');
delete_site_option('webpushr_woo_price_drop_show');
delete_option('webpushr_woo_sale_price_show');
delete_site_option('webpushr_woo_sale_price_show');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');

// Delete Transients
delete_transient('webpushr_notification_sent');
delete_site_transient('webpushr_notification_sent');

// Clear Cron Jobs
wp_clear_scheduled_hook('webpushr_abandoned_cart');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpp_send_notification_for_new_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpp_send_notification_for_new_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpp_send_notification_for_new_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpp_send_notification_for_new_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'webpushr_notification_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'webpushr_notification_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'webpushr_notification_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'webpushr_notification_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'webpushr_notification_body' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'webpushr_notification_body' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'webpushr_notification_body' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'webpushr_notification_body' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'webpushr_notification_preview' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'webpushr_notification_preview' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'webpushr_notification_preview' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'webpushr_notification_preview' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'webpushr_segment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'webpushr_segment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'webpushr_segment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'webpushr_segment' ) );


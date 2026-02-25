<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_discord_post_plus_mention_everyone');
delete_site_option('wp_discord_post_plus_mention_everyone');
delete_option('wp_discord_post_plus_post_webhook_url');
delete_site_option('wp_discord_post_plus_post_webhook_url');
delete_option('wp_discord_enabled_for_woocommerce_products');
delete_site_option('wp_discord_enabled_for_woocommerce_products');
delete_option('wp_discord_post_plus_product_webhook_url');
delete_site_option('wp_discord_post_plus_product_webhook_url');
delete_option('wp_discord_product_message_format');
delete_site_option('wp_discord_product_message_format');
delete_option('wp_discord_enabled_for_woocommerce');
delete_site_option('wp_discord_enabled_for_woocommerce');
delete_option('wp_discord_order_plus_message_format');
delete_site_option('wp_discord_order_plus_message_format');
delete_option('wp_discord_post_plus_bot_username');
delete_site_option('wp_discord_post_plus_bot_username');
delete_option('wp_discord_post_plus_avatar_url');
delete_site_option('wp_discord_post_plus_avatar_url');
delete_option('wp_discord_post_plus_bot_token');
delete_site_option('wp_discord_post_plus_bot_token');
delete_option('wp_discord_post_plus_webhook_url');
delete_site_option('wp_discord_post_plus_webhook_url');
delete_option('wp_discord_post_plus_logging');
delete_site_option('wp_discord_post_plus_logging');
delete_option('wp_discord_post_plus_disable_embed');
delete_site_option('wp_discord_post_plus_disable_embed');
delete_option('wp_discord_post_plus_message_format');
delete_site_option('wp_discord_post_plus_message_format');
delete_option('wp_discord_post_plus_settings_webhooks_input');
delete_site_option('wp_discord_post_plus_settings_webhooks_input');
delete_option('wp_discord_enabled_for_cf7');
delete_site_option('wp_discord_enabled_for_cf7');
delete_option('wp_discord_post_plus_cf7_webhook_url');
delete_site_option('wp_discord_post_plus_cf7_webhook_url');
delete_option('wp_discord_enabled_for_jetpack_cf');
delete_site_option('wp_discord_enabled_for_jetpack_cf');
delete_option('wp_discord_post_plus_jetpack_webhook_url');
delete_site_option('wp_discord_post_plus_jetpack_webhook_url');
delete_option('wp_discord_enabled_for_gf');
delete_site_option('wp_discord_enabled_for_gf');
delete_option('wp_discord_post_plus_gf_webhook_url');
delete_site_option('wp_discord_post_plus_gf_webhook_url');
delete_option('wp_discord_post_plus_order_webhook_url');
delete_site_option('wp_discord_post_plus_order_webhook_url');
delete_option('wp_discord_post_plus_giphy_api_key');
delete_site_option('wp_discord_post_plus_giphy_api_key');
delete_option('wp_discord_order_plus_plus_message_format');
delete_site_option('wp_discord_order_plus_plus_message_format');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_discord_send_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_discord_send_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_discord_send_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_discord_send_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_discord_mention_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_discord_mention_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_discord_mention_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_discord_mention_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_discord_post_plus_published' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_discord_post_plus_published' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_discord_post_plus_published' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_discord_post_plus_published' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_discord_post_published' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_discord_post_published' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_discord_post_published' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_discord_post_published' ) );


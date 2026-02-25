<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('discord_webhook_enabled_for_cf7');
delete_site_option('discord_webhook_enabled_for_cf7');
delete_option('discord_webhook_enabled_for_jetpack_cf');
delete_site_option('discord_webhook_enabled_for_jetpack_cf');
delete_option('discord_webhook_enabled_for_gf');
delete_site_option('discord_webhook_enabled_for_gf');
delete_option('discord_webhook_bot_username');
delete_site_option('discord_webhook_bot_username');
delete_option('discord_webhook_avatar_url');
delete_site_option('discord_webhook_avatar_url');
delete_option('discord_webhook_bot_token');
delete_site_option('discord_webhook_bot_token');
delete_option('discord_webhook_webhook_url');
delete_site_option('discord_webhook_webhook_url');
delete_option('discord_webhook_logging');
delete_site_option('discord_webhook_logging');
delete_option('discord_webhook_mention_everyone');
delete_site_option('discord_webhook_mention_everyone');
delete_option('discord_webhook_disable_embed');
delete_site_option('discord_webhook_disable_embed');
delete_option('discord_webhook_message_format');
delete_site_option('discord_webhook_message_format');
delete_option('discord_webhook_post_webhook_url');
delete_site_option('discord_webhook_post_webhook_url');
delete_option('discord_webhook_enabled_for_woocommerce');
delete_site_option('discord_webhook_enabled_for_woocommerce');
delete_option('discord_webhook_giphy_api_key');
delete_site_option('discord_webhook_giphy_api_key');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_webhook_url' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('discord_webhook_enabled_for_woocommerce_products');
delete_site_option('discord_webhook_enabled_for_woocommerce_products');
delete_option('discord_webhook_product_message_format');
delete_site_option('discord_webhook_product_message_format');
delete_option('discord_webhook_order_message_format');
delete_site_option('discord_webhook_order_message_format');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_discord_webhook_published' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_discord_webhook_published' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_discord_webhook_published' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_discord_webhook_published' ) );


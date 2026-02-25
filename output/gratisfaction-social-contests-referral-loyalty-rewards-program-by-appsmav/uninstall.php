<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('grappsmav_appid');
delete_site_option('grappsmav_appid');
delete_option('grappsmav_payload');
delete_site_option('grappsmav_payload');
delete_option('grappsmav_shop_id');
delete_site_option('grappsmav_shop_id');
delete_option('grappsmav_register');
delete_site_option('grappsmav_register');
delete_option('grappsmav_admin_email');
delete_site_option('grappsmav_admin_email');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'is_embed_landing_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'is_embed_landing_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'is_embed_landing_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'is_embed_landing_url' ) );


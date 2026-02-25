<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pisol_bogo_redirect');
delete_site_option('pisol_bogo_redirect');
delete_option('pisol_bogo_category_rules');
delete_site_option('pisol_bogo_category_rules');
delete_option('pisol_free_product');
delete_site_option('pisol_free_product');
delete_option('pisol_global_disable');
delete_site_option('pisol_global_disable');
delete_option('pisol_product_quantity');
delete_site_option('pisol_product_quantity');
delete_option('pisol_free_product_quantity');
delete_site_option('pisol_free_product_quantity');
delete_option('pisol_global_same_product_msg');
delete_site_option('pisol_global_same_product_msg');
delete_option('pisol_global_diff_product_msg');
delete_site_option('pisol_global_diff_product_msg');
delete_option('pisol_bogo_message_bg_color');
delete_site_option('pisol_bogo_message_bg_color');
delete_option('pisol_bogo_message_text_color');
delete_site_option('pisol_bogo_message_text_color');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pisol_enable_bogo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pisol_enable_bogo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pisol_enable_bogo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pisol_enable_bogo' ) );


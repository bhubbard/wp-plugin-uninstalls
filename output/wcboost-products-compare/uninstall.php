<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcboost_products_compare_added_behavior');
delete_site_option('wcboost_products_compare_added_behavior');
delete_option('wcboost_products_compare_tracking');
delete_site_option('wcboost_products_compare_tracking');
delete_option('wcboost_products_compare_bar');
delete_site_option('wcboost_products_compare_bar');
delete_option('wcboost_products_compare_exists_item_button_behaviour');
delete_site_option('wcboost_products_compare_exists_item_button_behaviour');
delete_option('wcboost_products_compare_ajax_bypass_cache');
delete_site_option('wcboost_products_compare_ajax_bypass_cache');
delete_option('wcboost_products_compare_bar_button_behavior');
delete_site_option('wcboost_products_compare_bar_button_behavior');
delete_option('wcboost_products_compare_bar_hide_if_single');
delete_site_option('wcboost_products_compare_bar_hide_if_single');
delete_option('woocommerce_private_link');
delete_site_option('woocommerce_private_link');
delete_option('woocommerce_share_key');
delete_site_option('woocommerce_share_key');
delete_option('wcboost_products_compare_button_icon');
delete_site_option('wcboost_products_compare_button_icon');
delete_option('wcboost_products_compare_button_text');
delete_site_option('wcboost_products_compare_button_text');
delete_option('wcboost_products_compare_version');
delete_site_option('wcboost_products_compare_version');
delete_option('wcboost_products_compare_page_id');
delete_site_option('wcboost_products_compare_page_id');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wcboost_products_compare_load_after_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wcboost_products_compare_load_after_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wcboost_products_compare_load_after_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wcboost_products_compare_load_after_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_wcboost_products_compare_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_wcboost_products_compare_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_wcboost_products_compare_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_wcboost_products_compare_%' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('preorder_timer_hpos_notice_shown');
delete_site_option('preorder_timer_hpos_notice_shown');
delete_option('preorder_timer_product_ids');
delete_site_option('preorder_timer_product_ids');
delete_option('preorder_timer_style');
delete_site_option('preorder_timer_style');
delete_option('preorder_timer_text');
delete_site_option('preorder_timer_text');
delete_option('preorder_timer_expiry_action');
delete_site_option('preorder_timer_expiry_action');
delete_option('preorder_timer_expired_message');
delete_site_option('preorder_timer_expired_message');
delete_option('preorder_timer_enabled');
delete_site_option('preorder_timer_enabled');
delete_option('preorder_timer_settings');
delete_site_option('preorder_timer_settings');
delete_option('preorder_timer_version');
delete_site_option('preorder_timer_version');

// Delete Transients
delete_transient('woocommerce_hpos_incompatible_plugins');
delete_site_transient('woocommerce_hpos_incompatible_plugins');
delete_transient('woocommerce_features_cache');
delete_site_transient('woocommerce_features_cache');
delete_transient('preorder_timer_hpos_compatibility_checked');
delete_site_transient('preorder_timer_hpos_compatibility_checked');
delete_transient('preorder_timer_cache');
delete_site_transient('preorder_timer_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('preorder_timer_check_expiry');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_preorder_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_preorder_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_preorder_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_preorder_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_preorder_available_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_preorder_available_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_preorder_available_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_preorder_available_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_preorder_available_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_preorder_available_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_preorder_available_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_preorder_available_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_preorder_button_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_preorder_button_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_preorder_button_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_preorder_button_text' ) );


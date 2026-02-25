<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_swish_settings');
delete_site_option('woocommerce_swish_settings');
delete_option('swish_northmill_notice_displayed_2');
delete_site_option('swish_northmill_notice_displayed_2');
delete_option('swish_refresh_token');
delete_site_option('swish_refresh_token');

// Delete Transients
delete_transient('swish_access_token');
delete_site_transient('swish_access_token');
delete_transient('swish_notices');
delete_site_transient('swish_notices');
delete_transient('swish_activated_or_upgraded');
delete_site_transient('swish_activated_or_upgraded');
delete_transient('handle_swish_account');
delete_site_transient('handle_swish_account');
delete_transient('swish_retrieve_payment_info');
delete_site_transient('swish_retrieve_payment_info');
delete_transient('swish_activated');
delete_site_transient('swish_activated');
delete_transient('swish_did_show_connection_info');
delete_site_transient('swish_did_show_connection_info');
delete_transient('swish_did_show_legacy_info');
delete_site_transient('swish_did_show_legacy_info');
delete_transient('swish_upgraded');
delete_site_transient('swish_upgraded');
delete_transient('swish_connect_result');
delete_site_transient('swish_connect_result');
delete_transient('swish_activation_time');
delete_site_transient('swish_activation_time');
delete_transient('swish_upgraded_time');
delete_site_transient('swish_upgraded_time');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_swish_purchase_age_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_swish_purchase_age_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_swish_purchase_age_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_swish_purchase_age_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );


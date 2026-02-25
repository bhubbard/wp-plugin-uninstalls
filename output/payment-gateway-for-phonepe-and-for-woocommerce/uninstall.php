<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pgppw_activation_time');
delete_site_option('pgppw_activation_time');
delete_option('pgppw_review_notice_hide_v1');
delete_site_option('pgppw_review_notice_hide_v1');
delete_option('pgppw_next_show_time');
delete_site_option('pgppw_next_show_time');

// Delete Transients
delete_transient('pgppw_oauth_token_live');
delete_site_transient('pgppw_oauth_token_live');
delete_transient('pgppw_oauth_token_sandbox');
delete_site_transient('pgppw_oauth_token_sandbox');
delete_transient('easy_pgppw_for_woocommerce_redirect');
delete_site_transient('easy_pgppw_for_woocommerce_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_phonepe_refund_txn_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_phonepe_refund_txn_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_phonepe_refund_txn_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_phonepe_refund_txn_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_phonepe_merchant_refund_txn_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_phonepe_merchant_refund_txn_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_phonepe_merchant_refund_txn_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_phonepe_merchant_refund_txn_id' ) );


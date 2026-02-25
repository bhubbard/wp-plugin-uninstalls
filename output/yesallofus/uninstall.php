<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dltpays_store_id');
delete_site_option('dltpays_store_id');
delete_option('dltpays_api_secret');
delete_site_option('dltpays_api_secret');
delete_option('dltpays_wallet_address');
delete_site_option('dltpays_wallet_address');
delete_option('dltpays_payout_threshold');
delete_site_option('dltpays_payout_threshold');
delete_option('dltpays_payout_schedule');
delete_site_option('dltpays_payout_schedule');
delete_option('dltpays_payout_mode');
delete_site_option('dltpays_payout_mode');
delete_option('dltpays_wallet_type');
delete_site_option('dltpays_wallet_type');
delete_option('dltpays_social_provider');
delete_site_option('dltpays_social_provider');
delete_option('dltpays_api_key');
delete_site_option('dltpays_api_key');
delete_option('dltpays_referral_code');
delete_site_option('dltpays_referral_code');
delete_option('dltpays_commission_rates');
delete_site_option('dltpays_commission_rates');
delete_option('dltpays_cookie_days');
delete_site_option('dltpays_cookie_days');
delete_option('dltpays_testnet_mode');
delete_site_option('dltpays_testnet_mode');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dltpays_referral_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dltpays_referral_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dltpays_referral_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dltpays_referral_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dltpays_processed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dltpays_processed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dltpays_processed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dltpays_processed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dltpays_payout_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dltpays_payout_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dltpays_payout_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dltpays_payout_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_dltpays_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_dltpays_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_dltpays_error' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_dltpays_error' ) );


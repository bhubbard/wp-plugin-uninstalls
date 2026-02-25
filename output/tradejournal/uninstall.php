<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tradejournal_merge_accounts');
delete_site_option('tradejournal_merge_accounts');
delete_option('tradejournal_merge_time_tolerance');
delete_site_option('tradejournal_merge_time_tolerance');
delete_option('tradejournal_merge_round_to_minute');
delete_site_option('tradejournal_merge_round_to_minute');
delete_option('tradejournal_instrument_multipliers');
delete_site_option('tradejournal_instrument_multipliers');
delete_option('tradejournal_setups');
delete_site_option('tradejournal_setups');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'trade_repeater' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'trade_repeater' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'trade_repeater' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'trade_repeater' ) );


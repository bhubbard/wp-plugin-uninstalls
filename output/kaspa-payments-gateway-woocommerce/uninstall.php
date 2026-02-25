<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kasppaga_wallet_configured');
delete_site_option('kasppaga_wallet_configured');
delete_option('kaspa_rate_last_updated');
delete_site_option('kaspa_rate_last_updated');
delete_option('kasppaga_wallet_kpub');
delete_site_option('kasppaga_wallet_kpub');
delete_option('kasppaga_wallet_address');
delete_site_option('kasppaga_wallet_address');
delete_option('kasppaga_next_address_index');
delete_site_option('kasppaga_next_address_index');
delete_option('kasppaga_wallet_setup_date');
delete_site_option('kasppaga_wallet_setup_date');
delete_option('kasppaga_address_type');
delete_site_option('kasppaga_address_type');
delete_option('kasppaga_wallet_data');
delete_site_option('kasppaga_wallet_data');
delete_option('woocommerce_kaspa_settings');
delete_site_option('woocommerce_kaspa_settings');

// Delete Transients
delete_transient('kaspa_rate_cache');
delete_site_transient('kaspa_rate_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('kasppaga_poll_payments');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'kasppaga_review_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'kasppaga_review_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'kasppaga_review_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'kasppaga_review_notice_dismissed' ) );


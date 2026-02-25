<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('affirm_us_keys_status');
delete_site_option('affirm_us_keys_status');
delete_option('woocommerce_affirm_settings');
delete_site_option('woocommerce_affirm_settings');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('oauth_init');
delete_site_transient('oauth_init');

// Clear Cron Jobs
wp_clear_scheduled_hook('affirm_api_key_check');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wc_gateway_affirm_charge_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wc_gateway_affirm_charge_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wc_gateway_affirm_charge_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wc_gateway_affirm_charge_id' ) );


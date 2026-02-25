<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('recapture_custom_recapture_host');
delete_site_option('recapture_custom_recapture_host');
delete_option('recapture_custom_loader_url');
delete_site_option('recapture_custom_loader_url');
delete_option('recapture_api_key');
delete_site_option('recapture_api_key');
delete_option('recapture_authenticator_token');
delete_site_option('recapture_authenticator_token');
delete_option('recapture_discount_code');
delete_site_option('recapture_discount_code');
delete_option('recapture_is_exporting');
delete_site_option('recapture_is_exporting');
delete_option('recapture_rcp_exclude_renewal_carts');
delete_site_option('recapture_rcp_exclude_renewal_carts');
delete_option('recapture_export_offset');
delete_site_option('recapture_export_offset');

// Clear Cron Jobs
wp_clear_scheduled_hook('recapture_run_export');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_recapture_cart_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_recapture_cart_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_recapture_cart_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_recapture_cart_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_edd_payment_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_edd_payment_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_edd_payment_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_edd_payment_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'recapture_missing_plugin_nag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'recapture_missing_plugin_nag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'recapture_missing_plugin_nag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'recapture_missing_plugin_nag' ) );


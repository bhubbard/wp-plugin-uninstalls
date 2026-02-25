<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('as_integration_options');
delete_site_option('as_integration_options');
delete_option('adscout_integration_options');
delete_site_option('adscout_integration_options');
delete_option('adscout_api_token');
delete_site_option('adscout_api_token');
delete_option('adscout_partner_domain_hex');
delete_site_option('adscout_partner_domain_hex');
delete_option('as_feed_last_updated');
delete_site_option('as_feed_last_updated');
delete_option('adscout_hash');
delete_site_option('adscout_hash');

// Clear Cron Jobs
wp_clear_scheduled_hook('as_generate_product_feed_daily');
wp_clear_scheduled_hook('run_adscout_job_queue');
wp_clear_scheduled_hook('adscout_run_job_queue');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ac_coupon_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ac_coupon_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ac_coupon_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ac_coupon_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ac_coupon_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ac_coupon_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ac_coupon_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ac_coupon_source' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hubspot_api_token');
delete_site_option('hubspot_api_token');
delete_option('hubspot_deal_stage');
delete_site_option('hubspot_deal_stage');
delete_option('hubspot_pipeline');
delete_site_option('hubspot_pipeline');
delete_option('store_deals_api_token');
delete_site_option('store_deals_api_token');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_hubspot_deal_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_hubspot_deal_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_hubspot_deal_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_hubspot_deal_id' ) );


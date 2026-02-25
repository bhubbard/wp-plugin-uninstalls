<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tradedoubler_credentials');
delete_site_option('tradedoubler_credentials');
delete_option('tradedoubler_org_ID');
delete_site_option('tradedoubler_org_ID');
delete_option('tradedoubler_program_ID');
delete_site_option('tradedoubler_program_ID');
delete_option('tradedoubler_event_ID');
delete_site_option('tradedoubler_event_ID');
delete_option('tradedoubler_vat_commision');
delete_site_option('tradedoubler_vat_commision');
delete_option('tradedoubler_shipping_commision');
delete_site_option('tradedoubler_shipping_commision');
delete_option('activated_codes_tradedoubler');
delete_site_option('activated_codes_tradedoubler');
delete_option('tradedoubler_last_time_feed_update');
delete_site_option('tradedoubler_last_time_feed_update');
delete_option('tradedoubler_segment_ID');
delete_site_option('tradedoubler_segment_ID');
delete_option('tradedoubler_feeds');
delete_site_option('tradedoubler_feeds');
delete_option('last_hubspot_update');
delete_site_option('last_hubspot_update');

// Delete Transients
delete_transient('user_token_tradedoublerAPI');
delete_site_transient('user_token_tradedoublerAPI');
delete_transient('token_res_tradedoublerAPI');
delete_site_transient('token_res_tradedoublerAPI');
delete_transient('product_feeds_tradedoublerAPI');
delete_site_transient('product_feeds_tradedoublerAPI');
delete_transient('program_name_tradedoublerAPI');
delete_site_transient('program_name_tradedoublerAPI');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'usage_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'usage_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'usage_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'usage_count' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('permate_setting_enable');
delete_site_option('permate_setting_enable');
delete_option('permate_setting_gtm');
delete_site_option('permate_setting_gtm');
delete_option('permate_setting_commission');
delete_site_option('permate_setting_commission');
delete_option('permate_setting_multiple_events');
delete_site_option('permate_setting_multiple_events');
delete_option('permate_setting_conversion_tracking');
delete_site_option('permate_setting_conversion_tracking');
delete_option('permate_setting_conversion_endpoint');
delete_site_option('permate_setting_conversion_endpoint');
delete_option('permate_setting_conversion_post_type');
delete_site_option('permate_setting_conversion_post_type');
delete_option('permate_setting_manual_approve');
delete_site_option('permate_setting_manual_approve');
delete_option('permate_setting_api_key');
delete_site_option('permate_setting_api_key');
delete_option('permate_setting_adv_id');
delete_site_option('permate_setting_adv_id');
delete_option('permate_setting_offer_id');
delete_site_option('permate_setting_offer_id');
delete_option('permate_setting_approved_conversion');
delete_site_option('permate_setting_approved_conversion');
delete_option('permate_setting_reject_conversion');
delete_site_option('permate_setting_reject_conversion');
delete_option('permate_setting_list_endpoint');
delete_site_option('permate_setting_list_endpoint');
delete_option('permate_setting_url_cdn');
delete_site_option('permate_setting_url_cdn');
delete_option('permate_setting_url_tracking');
delete_site_option('permate_setting_url_tracking');
delete_option('permate_setting_url_api');
delete_site_option('permate_setting_url_api');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_permate_ci' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_permate_ci' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_permate_ci' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_permate_ci' ) );


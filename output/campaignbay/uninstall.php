<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_log_cleanup_check', '_site_transient_%_log_cleanup_check' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('campaignbay_calender_campaigns');
delete_site_transient('campaignbay_calender_campaigns');
delete_transient('campaignbay_active_campaigns');
delete_site_transient('campaignbay_active_campaigns');
delete_transient('campaignbay_scheduled_campaigns');
delete_site_transient('campaignbay_scheduled_campaigns');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_campaignbay_onboarding_first_campaign' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_campaignbay_onboarding_first_campaign' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_campaignbay_onboarding_first_campaign' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_campaignbay_onboarding_first_campaign' ) );


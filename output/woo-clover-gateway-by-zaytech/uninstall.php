<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_woocci_zaytech_settings');
delete_site_option('woocommerce_woocci_zaytech_settings');
delete_option('woocci_jwt_token');
delete_site_option('woocci_jwt_token');
delete_option('woocci_pakms_key');
delete_site_option('woocci_pakms_key');
delete_option('woocci_reviews_installed_on');
delete_site_option('woocci_reviews_installed_on');
delete_option('woocci_total_success_orders');
delete_site_option('woocci_total_success_orders');
delete_option('wooccii_zaytech_version');
delete_site_option('wooccii_zaytech_version');
delete_option('woocci_version');
delete_site_option('woocci_version');

// Delete Transients
delete_transient('woocci_force_pakms');
delete_site_transient('woocci_force_pakms');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_woocci_reviews_dismissed_triggers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_woocci_reviews_dismissed_triggers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_woocci_reviews_dismissed_triggers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_woocci_reviews_dismissed_triggers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_woocci_reviews_last_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_woocci_reviews_last_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_woocci_reviews_last_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_woocci_reviews_last_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_woocci_reviews_already_did' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_woocci_reviews_already_did' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_woocci_reviews_already_did' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_woocci_reviews_already_did' ) );


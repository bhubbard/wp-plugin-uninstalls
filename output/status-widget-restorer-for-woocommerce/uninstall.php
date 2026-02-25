<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_setup_complete');
delete_site_option('woocommerce_setup_complete');
delete_option('woocommerce_onboarding_completed');
delete_site_option('woocommerce_onboarding_completed');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('swrfw7sk_review_dismissed_permanently');
delete_site_option('swrfw7sk_review_dismissed_permanently');
delete_option('swrfw7sk_install_date');
delete_site_option('swrfw7sk_install_date');
delete_option('swrfw7sk_review_dismissed_date');
delete_site_option('swrfw7sk_review_dismissed_date');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'metaboxhidden_dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'metaboxhidden_dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'metaboxhidden_dashboard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'metaboxhidden_dashboard' ) );


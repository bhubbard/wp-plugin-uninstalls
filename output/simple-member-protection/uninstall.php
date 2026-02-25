<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smprotection_membership_levels');
delete_site_option('smprotection_membership_levels');
delete_option('smprotection_enable_protection');
delete_site_option('smprotection_enable_protection');
delete_option('smprotection_thank_you_page_url');
delete_site_option('smprotection_thank_you_page_url');
delete_option('stripe_secret_key');
delete_site_option('stripe_secret_key');
delete_option('stripe_publishable_key');
delete_site_option('stripe_publishable_key');
delete_option('smprotection_stripe_mode');
delete_site_option('smprotection_stripe_mode');
delete_option('smprotection_stripe_live_secret');
delete_site_option('smprotection_stripe_live_secret');
delete_option('smprotection_stripe_test_secret');
delete_site_option('smprotection_stripe_test_secret');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'membership_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'membership_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'membership_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'membership_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_smprotection_required_membership_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_smprotection_required_membership_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_smprotection_required_membership_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_smprotection_required_membership_level' ) );


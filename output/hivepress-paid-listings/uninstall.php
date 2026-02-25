<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hp_listing_package_allow_free');
delete_site_option('hp_listing_package_allow_free');
delete_option('hp_listing_enable_moderation');
delete_site_option('hp_listing_enable_moderation');
delete_option('hp_product_listing_feature');
delete_site_option('hp_product_listing_feature');
delete_option('hp_listing_featuring_period');
delete_site_option('hp_listing_featuring_period');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hp_moderated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hp_moderated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hp_moderated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hp_moderated' ) );


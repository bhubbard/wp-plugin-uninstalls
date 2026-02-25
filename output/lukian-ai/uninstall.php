<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lukianai_feedbacks');
delete_site_option('lukianai_feedbacks');
delete_option('lukianai_options');
delete_site_option('lukianai_options');
delete_option('lukianai_credit_options');
delete_site_option('lukianai_credit_options');

// Delete Transients
delete_transient('lukianai_enhancements');
delete_site_transient('lukianai_enhancements');

// Clear Cron Jobs
wp_clear_scheduled_hook('lukianai_monthly_credit_reset');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fave_property_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fave_property_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fave_property_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fave_property_images' ) );


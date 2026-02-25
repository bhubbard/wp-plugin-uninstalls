<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('CHARMING_PORTFOLIO_v2');
delete_site_option('CHARMING_PORTFOLIO_v2');
delete_option('CHARMING_PORTFOLIO_additional_v2');
delete_site_option('CHARMING_PORTFOLIO_additional_v2');
delete_option('CHARMING_PORTFOLIO_data');
delete_site_option('CHARMING_PORTFOLIO_data');
delete_option('CHARMING_PORTFOLIO_additional_data');
delete_site_option('CHARMING_PORTFOLIO_additional_data');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'enquiry_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'enquiry_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'enquiry_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'enquiry_email' ) );


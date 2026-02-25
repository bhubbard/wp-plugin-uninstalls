<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpm_timefix_general_settings');
delete_site_option('wpm_timefix_general_settings');
delete_option('wpm_timefix_permalink_settings');
delete_site_option('wpm_timefix_permalink_settings');
delete_option('wpm_timefix_payment_settings');
delete_site_option('wpm_timefix_payment_settings');
delete_option('wpm_timefix_offline_payment_settings');
delete_site_option('wpm_timefix_offline_payment_settings');
delete_option('wpm_timefix_email_settings');
delete_site_option('wpm_timefix_email_settings');
delete_option('wpm_timefix_needs_flush');
delete_site_option('wpm_timefix_needs_flush');

// Delete Transients
delete_transient('wpm_timefix_installing');
delete_site_transient('wpm_timefix_installing');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_timefix_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_timefix_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_timefix_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_timefix_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_timefix_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_timefix_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_timefix_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_timefix_order' ) );


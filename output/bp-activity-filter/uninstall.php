<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bp_activity_filter_default');
delete_site_option('bp_activity_filter_default');
delete_option('bp_activity_filter_profile_default');
delete_site_option('bp_activity_filter_profile_default');
delete_option('bp_activity_filter_hidden');
delete_site_option('bp_activity_filter_hidden');
delete_option('bp_activity_filter_cpt_settings');
delete_site_option('bp_activity_filter_cpt_settings');

// Delete Transients
delete_transient('bp_activity_filter_activation_redirect');
delete_site_transient('bp_activity_filter_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bp_activity_filter_activity_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bp_activity_filter_activity_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bp_activity_filter_activity_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bp_activity_filter_activity_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bp_activity_filter_recorded' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bp_activity_filter_recorded' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bp_activity_filter_recorded' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bp_activity_filter_recorded' ) );


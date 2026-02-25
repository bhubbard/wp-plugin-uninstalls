<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_av_require_for');
delete_site_option('_av_require_for');
delete_option('_av_always_verify');
delete_site_option('_av_always_verify');
delete_option('_av_minimum_age');
delete_site_option('_av_minimum_age');
delete_option('_av_cookie_duration');
delete_site_option('_av_cookie_duration');
delete_option('_av_membership');
delete_site_option('_av_membership');
delete_option('_av_heading');
delete_site_option('_av_heading');
delete_option('_av_description');
delete_site_option('_av_description');
delete_option('_av_input_type');
delete_site_option('_av_input_type');
delete_option('_av_styling');
delete_site_option('_av_styling');
delete_option('_av_overlay_color');
delete_site_option('_av_overlay_color');
delete_option('_av_bgcolor');
delete_site_option('_av_bgcolor');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_av_needs_verify' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_av_needs_verify' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_av_needs_verify' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_av_needs_verify' ) );


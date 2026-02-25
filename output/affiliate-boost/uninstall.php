<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('abpdotes_delay');
delete_site_option('abpdotes_delay');
delete_option('abpdotes_session_lifetime');
delete_site_option('abpdotes_session_lifetime');
delete_option('abpdotes_event_trigger');
delete_site_option('abpdotes_event_trigger');
delete_option('abpdotes_onoff');
delete_site_option('abpdotes_onoff');
delete_option('abpdotes_exclude_posts');
delete_site_option('abpdotes_exclude_posts');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'affiliate_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'affiliate_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'affiliate_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'affiliate_link' ) );


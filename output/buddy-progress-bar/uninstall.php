<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bppp-auto-embed');
delete_site_option('bppp-auto-embed');
delete_option('bppp-extra-widget-embed');
delete_site_option('bppp-extra-widget-embed');
delete_option('bppp-extra-directory-embed');
delete_site_option('bppp-extra-directory-embed');
delete_option('bppp-profile-title-embed');
delete_site_option('bppp-profile-title-embed');
delete_option('bppp-login-title-embed');
delete_site_option('bppp-login-title-embed');
delete_option('bppp-directory-title-embed');
delete_site_option('bppp-directory-title-embed');
delete_option('bppp-completed-title-embed');
delete_site_option('bppp-completed-title-embed');
delete_option('bppp-award-embed');
delete_site_option('bppp-award-embed');
delete_option('bppp-empty-profile-embed');
delete_site_option('bppp-empty-profile-embed');
delete_option('bppp-empty-message-embed');
delete_site_option('bppp-empty-message-embed');
delete_option('bppp-empty-login-embed');
delete_site_option('bppp-empty-login-embed');
delete_option('bppp-points-shares');
delete_site_option('bppp-points-shares');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_progress_bar_percent_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_progress_bar_percent_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_progress_bar_percent_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_progress_bar_percent_level' ) );


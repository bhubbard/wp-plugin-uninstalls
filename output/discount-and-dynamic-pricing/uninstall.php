<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('thwdpf_since');
delete_site_option('thwdpf_since');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('thwdpf_advanced_settings');
delete_site_option('thwdpf_advanced_settings');

// Delete Transients
delete_transient('thwdpf_review_request_notice_dismissed');
delete_site_transient('thwdpf_review_request_notice_dismissed');
delete_transient('thwdpf_skip_review_request_notice');
delete_site_transient('thwdpf_skip_review_request_notice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'thwdpf_deactivation_snooze' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'thwdpf_deactivation_snooze' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'thwdpf_deactivation_snooze' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'thwdpf_deactivation_snooze' ) );


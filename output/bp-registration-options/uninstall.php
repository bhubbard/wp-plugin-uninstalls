<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bprwg_activate_message');
delete_site_option('bprwg_activate_message');
delete_option('bprwg_approved_message');
delete_site_option('bprwg_approved_message');
delete_option('bprwg_denied_message');
delete_site_option('bprwg_denied_message');
delete_option('bprwg_admin_pending_message');
delete_site_option('bprwg_admin_pending_message');
delete_option('bprwg_user_pending_message');
delete_site_option('bprwg_user_pending_message');
delete_option('bprwg_moderate');
delete_site_option('bprwg_moderate');
delete_option('bprwg_privacy_network');
delete_site_option('bprwg_privacy_network');
delete_option('bprwg_enable_notifications');
delete_site_option('bprwg_enable_notifications');
delete_option('bprwg_blocked_ips');
delete_site_option('bprwg_blocked_ips');
delete_option('bprwg_blocked_emails');
delete_site_option('bprwg_blocked_emails');

// Delete Transients
delete_transient('bpro_user_count');
delete_site_transient('bpro_user_count');
delete_transient('bpro_total_user_count');
delete_site_transient('bpro_total_user_count');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bprwg_ip_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bprwg_ip_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bprwg_ip_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bprwg_ip_address' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bprwg_is_moderated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bprwg_is_moderated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bprwg_is_moderated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bprwg_is_moderated' ) );


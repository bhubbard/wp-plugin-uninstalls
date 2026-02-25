<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cbxuseronline_version');
delete_site_option('cbxuseronline_version');
delete_option('cbxuseronline_mostonline');
delete_site_option('cbxuseronline_mostonline');
delete_option('cbxuseronline_basics');
delete_site_option('cbxuseronline_basics');

// Delete Transients
delete_transient('cbxuseronline_deactivated_notice');
delete_site_transient('cbxuseronline_deactivated_notice');
delete_transient('cbxuseronline_activated_notice');
delete_site_transient('cbxuseronline_activated_notice');
delete_transient('cbxuseronline_upgraded_notice');
delete_site_transient('cbxuseronline_upgraded_notice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cbxuseronline_lastlogin_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cbxuseronline_lastlogin_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cbxuseronline_lastlogin_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cbxuseronline_lastlogin_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cbxuseronline_lastlogin_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cbxuseronline_lastlogin_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cbxuseronline_lastlogin_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cbxuseronline_lastlogin_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cbxuseronline_second_lastlogin_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cbxuseronline_second_lastlogin_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cbxuseronline_second_lastlogin_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cbxuseronline_second_lastlogin_time' ) );


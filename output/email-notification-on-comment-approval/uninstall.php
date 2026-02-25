<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enocp_from');
delete_site_option('enocp_from');
delete_option('enocp_cc');
delete_site_option('enocp_cc');
delete_option('enocp_subject');
delete_site_option('enocp_subject');
delete_option('enocp_email_content');
delete_site_option('enocp_email_content');
delete_option('enocp_bcc');
delete_site_option('enocp_bcc');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'allow_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'allow_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'allow_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'allow_notification' ) );


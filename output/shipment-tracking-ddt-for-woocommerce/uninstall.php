<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hwit_stddt_enable_debug');
delete_site_option('hwit_stddt_enable_debug');
delete_option('hwit_stddt_enable_email_repeat');
delete_site_option('hwit_stddt_enable_email_repeat');
delete_option('hwit_stddt_tracking_email_type');
delete_site_option('hwit_stddt_tracking_email_type');
delete_option('hw_stddt_include_tracking_info_with_ddt');
delete_site_option('hw_stddt_include_tracking_info_with_ddt');

// Delete Transients
delete_transient('hwit_stddt_notice_ddt_missing');
delete_site_transient('hwit_stddt_notice_ddt_missing');
delete_transient('hwit_stddt_notice_mail_sent');
delete_site_transient('hwit_stddt_notice_mail_sent');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_corriere' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_corriere' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_corriere' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_corriere' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_codice_tracciamento' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_codice_tracciamento' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_codice_tracciamento' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_codice_tracciamento' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_link_tracciamento' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_link_tracciamento' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_link_tracciamento' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_link_tracciamento' ) );


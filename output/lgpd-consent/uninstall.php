<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lgpd_consent_cyfer_options');
delete_site_option('lgpd_consent_cyfer_options');
delete_option('lgpd_consent_license_key');
delete_site_option('lgpd_consent_license_key');
delete_option('lgpd_consent_license_status');
delete_site_option('lgpd_consent_license_status');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lgpd_consent_cyfer_pro_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lgpd_consent_cyfer_pro_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lgpd_consent_cyfer_pro_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lgpd_consent_cyfer_pro_notice_dismissed' ) );


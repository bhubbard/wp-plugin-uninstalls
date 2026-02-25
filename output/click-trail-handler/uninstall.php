<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clicutcl_attribution_settings');
delete_site_option('clicutcl_attribution_settings');
delete_option('clicutcl_pii_risk_detected');
delete_site_option('clicutcl_pii_risk_detected');
delete_option('clicutcl_consent_mode');
delete_site_option('clicutcl_consent_mode');
delete_option('clicutcl_gtm');
delete_site_option('clicutcl_gtm');

// Clear Cron Jobs
wp_clear_scheduled_hook('clicutcl_daily_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_clicutcl_tracking_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_clicutcl_tracking_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_clicutcl_tracking_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_clicutcl_tracking_sent' ) );


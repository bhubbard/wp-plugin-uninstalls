<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vareoncalc_lite_options');
delete_site_option('vareoncalc_lite_options');
delete_option('vareoncalc_onboarding_status');
delete_site_option('vareoncalc_onboarding_status');

// Delete Transients
delete_transient('vareoncalc_pro_activated');
delete_site_transient('vareoncalc_pro_activated');
delete_transient('vareoncalc_pro_deactivated');
delete_site_transient('vareoncalc_pro_deactivated');
delete_transient('vareoncalc_activation_redirect');
delete_site_transient('vareoncalc_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vareoncalc_upgrade_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vareoncalc_upgrade_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vareoncalc_upgrade_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vareoncalc_upgrade_notice_dismissed' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ppguc_addon_events');
delete_site_option('ppguc_addon_events');
delete_option('ppguc_usercentrics_page_option');
delete_site_option('ppguc_usercentrics_page_option');
delete_option('ppguc_usercentrics_display_page');
delete_site_option('ppguc_usercentrics_display_page');
delete_option('ppguc_usercentrics_policy_id');
delete_site_option('ppguc_usercentrics_policy_id');
delete_option('ppguc_usercentrics_onboarding_complete');
delete_site_option('ppguc_usercentrics_onboarding_complete');

// Delete Transients
delete_transient('ppguc_admin_notice');
delete_site_transient('ppguc_admin_notice');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ppguc_page_published_%', '_site_transient_ppguc_page_published_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('ppguc_activation_redirect');
delete_site_transient('ppguc_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ppguc_usercentrics_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ppguc_usercentrics_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ppguc_usercentrics_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ppguc_usercentrics_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ppguc_preview_mode_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ppguc_preview_mode_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ppguc_preview_mode_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ppguc_preview_mode_page' ) );


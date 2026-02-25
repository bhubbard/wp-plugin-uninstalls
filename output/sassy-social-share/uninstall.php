<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('heateor_sss');
delete_site_option('heateor_sss');
delete_option('heateor_sss_twitcount_notification_read');
delete_site_option('heateor_sss_twitcount_notification_read');
delete_option('heateor_sss_gdpr_notification_read');
delete_site_option('heateor_sss_gdpr_notification_read');
delete_option('heateor_sss_version');
delete_site_option('heateor_sss_version');
delete_option('heateor_sss_custom_url_shares');
delete_site_option('heateor_sss_custom_url_shares');
delete_option('heateor_sss_homepage_shares');
delete_site_option('heateor_sss_homepage_shares');

// Delete Transients
delete_transient('heateor-sss-admin-notice-on-activation');
delete_site_transient('heateor-sss-admin-notice-on-activation');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_heateor_sss_share_count_%', '_site_transient_heateor_sss_share_count_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_heateor_sss_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_heateor_sss_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_heateor_sss_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_heateor_sss_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_heateor_sss_bitly_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_heateor_sss_bitly_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_heateor_sss_bitly_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_heateor_sss_bitly_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_heateor_sss_shares_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_heateor_sss_shares_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_heateor_sss_shares_meta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_heateor_sss_shares_meta' ) );


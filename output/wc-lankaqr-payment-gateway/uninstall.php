<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lankaqrwc_plugin_dismiss_rating_notice');
delete_site_option('lankaqrwc_plugin_dismiss_rating_notice');
delete_option('lankaqrwc_plugin_no_thanks_rating_notice');
delete_site_option('lankaqrwc_plugin_no_thanks_rating_notice');
delete_option('lankaqrwc_plugin_dismissed_time');
delete_site_option('lankaqrwc_plugin_dismissed_time');
delete_option('lankaqrwc_plugin_installed_time');
delete_site_option('lankaqrwc_plugin_installed_time');

// Delete Transients
delete_transient('lankaqrwc-admin-notice-on-activation');
delete_site_transient('lankaqrwc-admin-notice-on-activation');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_lankaqrwc_order_paid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_lankaqrwc_order_paid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_lankaqrwc_order_paid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_lankaqrwc_order_paid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_lankaqr_ref_num' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_lankaqr_ref_num' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_lankaqr_ref_num' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_lankaqr_ref_num' ) );


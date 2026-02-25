<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sbs_package');
delete_site_option('sbs_package');
delete_option('step_order');
delete_site_option('step_order');
delete_option('sbs_general');
delete_site_option('sbs_general');
delete_option('sbs_version');
delete_site_option('sbs_version');
delete_option('sbs_navbar');
delete_site_option('sbs_navbar');
delete_option('sbs_onf');
delete_site_option('sbs_onf');
delete_option('sbs_display');
delete_site_option('sbs_display');
delete_option('sbs_premium_key');
delete_site_option('sbs_premium_key');

// Delete Transients
delete_transient('sbs_premium_key_valid');
delete_site_transient('sbs_premium_key_valid');

// Clear Cron Jobs
wp_clear_scheduled_hook('sbs_daily_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_merch_credit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_merch_credit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_merch_credit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_merch_credit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_required_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_required_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_required_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_required_product' ) );


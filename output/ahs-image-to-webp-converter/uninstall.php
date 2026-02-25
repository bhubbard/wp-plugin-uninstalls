<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('AHSITW_quality');
delete_site_option('AHSITW_quality');
delete_option('AHSITW_conversion_count');
delete_site_option('AHSITW_conversion_count');

// Delete Transients
delete_transient('AHSITW_unconverted_count_rough');
delete_site_transient('AHSITW_unconverted_count_rough');

// Clear Cron Jobs
wp_clear_scheduled_hook('AHSITW_daily_maintenance');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_AHSITW_converted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_AHSITW_converted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_AHSITW_converted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_AHSITW_converted' ) );


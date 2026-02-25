<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ts_bat_hide_nonhirearchicals');
delete_site_option('ts_bat_hide_nonhirearchicals');
delete_option('ts_bat_select_multiple');
delete_site_option('ts_bat_select_multiple');
delete_option('ts_bat_hide_real_name');
delete_site_option('ts_bat_hide_real_name');
delete_option('ts_bat_hide_get');
delete_site_option('ts_bat_hide_get');
delete_option('ts_bat_hide_remove');
delete_site_option('ts_bat_hide_remove');
delete_option('ts_bat_dont_empty');
delete_site_option('ts_bat_dont_empty');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ts_bulk_add_term' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ts_bulk_add_term' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ts_bulk_add_term' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ts_bulk_add_term' ) );


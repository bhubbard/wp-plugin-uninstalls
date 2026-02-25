<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('neoship_login');
delete_site_option('neoship_login');
delete_option('neoship_has_gls');
delete_site_option('neoship_has_gls');
delete_option('neoship_has_packeta');
delete_site_option('neoship_has_packeta');
delete_option('neoship_has_123');
delete_site_option('neoship_has_123');
delete_option('neoship_has_dpd');
delete_site_option('neoship_has_dpd');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_parcelshop_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_parcelshop_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_parcelshop_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_parcelshop_id' ) );


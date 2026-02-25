<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('e20r_im_error_msg');
delete_site_option('e20r_im_error_msg');
delete_option('pmp_im_error_msg');
delete_site_option('pmp_im_error_msg');
delete_option('e20r_import_has_donated');
delete_site_option('e20r_import_has_donated');
delete_option('e20r_link_for_sponsor');
delete_site_option('e20r_link_for_sponsor');
delete_option('e20r_import_errors');
delete_site_option('e20r_import_errors');
delete_option('e20r_imesc_attr_error_msg');
delete_site_option('e20r_imesc_attr_error_msg');

// Delete Transients
delete_transient('e20r_import_filename');
delete_site_transient('e20r_import_filename');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pmprosm_seats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pmprosm_seats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pmprosm_seats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pmprosm_seats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pmprosm_sponsor' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pmprosm_sponsor' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pmprosm_sponsor' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pmprosm_sponsor' ) );


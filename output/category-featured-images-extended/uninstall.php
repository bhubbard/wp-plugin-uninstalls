<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cks_cfix_exclude_category');
delete_site_option('cks_cfix_exclude_category');
delete_option('cks_cfix_fallback_category');
delete_site_option('cks_cfix_fallback_category');
delete_option('cks_cfix_version');
delete_site_option('cks_cfix_version');
delete_option('cks_cfix_use_yoast_primary');
delete_site_option('cks_cfix_use_yoast_primary');
delete_option('cks_cfix_featured_images');
delete_site_option('cks_cfix_featured_images');
delete_option('cfi_featured_images');
delete_site_option('cfi_featured_images');
delete_option('cfix_featured_images');
delete_site_option('cfix_featured_images');
delete_option('cks_cfix_version ');
delete_site_option('cks_cfix_version ');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_primary_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_primary_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_primary_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_primary_category' ) );


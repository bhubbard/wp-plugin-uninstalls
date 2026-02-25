<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cga_enabled_post_types');
delete_site_option('cga_enabled_post_types');
delete_option('cga_default_guest_author');
delete_site_option('cga_default_guest_author');
delete_option('cga_join_style');
delete_site_option('cga_join_style');
delete_option('cga_apply_on');
delete_site_option('cga_apply_on');
delete_option('cga_cache_ttl');
delete_site_option('cga_cache_ttl');
delete_option('cga_suppress_schema');
delete_site_option('cga_suppress_schema');
delete_option('cga_cache_version');
delete_site_option('cga_cache_version');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cga_%', '_site_transient_cga_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'guest-author' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'guest-author' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'guest-author' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'guest-author' ) );


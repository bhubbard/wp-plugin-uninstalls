<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_wpzabb_global_settings');
delete_site_option('_wpzabb_global_settings');
delete_option('wpzabb_hide_branding');
delete_site_option('wpzabb_hide_branding');
delete_option('wpzoom_force_check_extensions');
delete_site_option('wpzoom_force_check_extensions');
delete_option('wpzabb_lite_redirect');
delete_site_option('wpzabb_lite_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpzabb-cta-link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpzabb-cta-link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpzabb-cta-link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpzabb-cta-link' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sarvarov_lazy_load');
delete_site_option('sarvarov_lazy_load');

// Delete Transients
delete_transient('sarvarov_lazy_load_dynamic_js');
delete_site_transient('sarvarov_lazy_load_dynamic_js');
delete_transient('sarvarov_lazy_load_dynamic_css');
delete_site_transient('sarvarov_lazy_load_dynamic_css');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sarvarov_lazy_load_cache' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sarvarov_lazy_load_cache' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sarvarov_lazy_load_cache' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sarvarov_lazy_load_cache' ) );


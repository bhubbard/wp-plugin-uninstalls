<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('cache-enabler');
delete_site_option('cache-enabler');
delete_option('cache_enabler');
delete_site_option('cache_enabler');
delete_option('autoptimize_html');
delete_site_option('autoptimize_html');

// Delete Transients
delete_transient('cache_enabler_cache_size');
delete_site_transient('cache_enabler_cache_size');
delete_transient('cache_enabler_disk_updated');
delete_site_transient('cache_enabler_disk_updated');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_clear_post_cache_on_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_clear_post_cache_on_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_clear_post_cache_on_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_clear_post_cache_on_update' ) );


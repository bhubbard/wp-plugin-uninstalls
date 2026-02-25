<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cbxgooglemap_general');
delete_site_option('cbxgooglemap_general');
delete_option('cbxgooglemap_flush_rewrite_rules');
delete_site_option('cbxgooglemap_flush_rewrite_rules');
delete_option('cbxgooglemap_version');
delete_site_option('cbxgooglemap_version');

// Delete Transients
delete_transient('cbxgooglemap_activated_notice');
delete_site_transient('cbxgooglemap_activated_notice');
delete_transient('cbxgooglemap_upgraded_notice');
delete_site_transient('cbxgooglemap_upgraded_notice');
delete_transient('cbxgooglemap_proaddon_deactivated');
delete_site_transient('cbxgooglemap_proaddon_deactivated');
delete_transient('cbxgooglemap_flush_rewrite_rules');
delete_site_transient('cbxgooglemap_flush_rewrite_rules');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%lat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%lat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%lat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%lat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%lng' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%lng' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%lng' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%lng' ) );


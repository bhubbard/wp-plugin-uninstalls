<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cbxchangelog_version');
delete_site_option('cbxchangelog_version');
delete_option('cbxchangelog_flush_rewrite_rules');
delete_site_option('cbxchangelog_flush_rewrite_rules');

// Delete Transients
delete_transient('cbxchangelog_upgraded_notice');
delete_site_transient('cbxchangelog_upgraded_notice');
delete_transient('cbxchangelog_activated_notice');
delete_site_transient('cbxchangelog_activated_notice');
delete_transient('cbxchangelog_proaddon_deactivated');
delete_site_transient('cbxchangelog_proaddon_deactivated');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cbxchangelog' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cbxchangelog' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cbxchangelog' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cbxchangelog' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cbxchangelog_extra' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cbxchangelog_extra' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cbxchangelog_extra' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cbxchangelog_extra' ) );


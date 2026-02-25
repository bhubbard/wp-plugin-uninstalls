<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ENCHANTIER_SETTINGS');
delete_site_option('ENCHANTIER_SETTINGS');
delete_option('ENCHANTIER_KEY');
delete_site_option('ENCHANTIER_KEY');
delete_option('ENCHANTIER_PASSWORD');
delete_site_option('ENCHANTIER_PASSWORD');
delete_option('ENCHANTIER_NOHEADER');
delete_site_option('ENCHANTIER_NOHEADER');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'EnChantier_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'EnChantier_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'EnChantier_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'EnChantier_ignore_notice' ) );


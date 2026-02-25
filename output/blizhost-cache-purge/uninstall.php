<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('bliz_hash');
delete_site_option('bliz_hash');
delete_option('bliz_domain');
delete_site_option('bliz_domain');

// Delete Transients
delete_transient('bliz_hash_transient');
delete_site_transient('bliz_hash_transient');
delete_transient('bliz_domain_transient');
delete_site_transient('bliz_domain_transient');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'needJetpackMessage_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'needJetpackMessage_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'needJetpackMessage_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'needJetpackMessage_dismissed' ) );


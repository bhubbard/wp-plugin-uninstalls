<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WP_Github_Tools_Settingsgeneral');
delete_site_option('WP_Github_Tools_Settingsgeneral');
delete_option('WP_Github_Tools_Data');
delete_site_option('WP_Github_Tools_Data');

// Delete Transients
delete_transient('WP_Github_Tools');
delete_site_transient('WP_Github_Tools');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_github_tools_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_github_tools_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_github_tools_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_github_tools_ignore_notice' ) );


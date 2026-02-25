<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('ayudawp_no_gutenberg_activated');
delete_site_transient('ayudawp_no_gutenberg_activated');
delete_transient('ayudawp_fse_theme_activated_warning');
delete_site_transient('ayudawp_fse_theme_activated_warning');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ayudawp_no_gutenberg_fse_warning_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ayudawp_no_gutenberg_fse_warning_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ayudawp_no_gutenberg_fse_warning_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ayudawp_no_gutenberg_fse_warning_dismissed' ) );


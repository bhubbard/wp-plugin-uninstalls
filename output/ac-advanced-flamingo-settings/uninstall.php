<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acafs_enable_persistent_uploads');
delete_site_option('acafs_enable_persistent_uploads');
delete_option('acafs_disable_address_book');
delete_site_option('acafs_disable_address_book');
delete_option('acafs_rename_flamingo');
delete_site_option('acafs_rename_flamingo');
delete_option('acafs_default_flamingo_page');
delete_site_option('acafs_default_flamingo_page');
delete_option('acafs_version');
delete_site_option('acafs_version');
delete_option('acafs_display_fields');
delete_site_option('acafs_display_fields');

// Delete Transients
delete_transient('acafs_import_started');
delete_site_transient('acafs_import_started');
delete_transient('acafs_import_success');
delete_site_transient('acafs_import_success');
delete_transient('acafs_export_file');
delete_site_transient('acafs_export_file');
delete_transient('acafs_export_success');
delete_site_transient('acafs_export_success');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_field_your-message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_field_your-message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_field_your-message' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_field_your-message' ) );


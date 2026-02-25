<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easy_alt_import_errors');
delete_site_option('easy_alt_import_errors');
delete_option('easy_alt_import_last_rows');
delete_site_option('easy_alt_import_last_rows');
delete_option('easy_alt_import_backup');
delete_site_option('easy_alt_import_backup');
delete_option('easy_alt_import_backup_date');
delete_site_option('easy_alt_import_backup_date');
delete_option('easy_alt_import_apply_errors');
delete_site_option('easy_alt_import_apply_errors');
delete_option('easy_alt_import_undo_errors');
delete_site_option('easy_alt_import_undo_errors');
delete_option('easy_alt_import_version');
delete_site_option('easy_alt_import_version');

// Delete Transients
delete_transient('easy_alt_import_activated');
delete_site_transient('easy_alt_import_activated');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );


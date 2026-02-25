<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('readoxin_class_sync_mode');
delete_site_option('readoxin_class_sync_mode');
delete_option('readoxin_class_storage_type');
delete_site_option('readoxin_class_storage_type');
delete_option('ct_components_classes');
delete_site_option('ct_components_classes');
delete_option('ct_style_folders');
delete_site_option('ct_style_folders');
delete_option('oxygen_options_autoload');
delete_site_option('oxygen_options_autoload');
delete_option('oxygen_vsb_google_fonts_cache');
delete_site_option('oxygen_vsb_google_fonts_cache');
delete_option('readoxin_font_mappings');
delete_site_option('readoxin_font_mappings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_readoxin_file_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_readoxin_file_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_readoxin_file_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_readoxin_file_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_readoxin_filesize' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_readoxin_filesize' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_readoxin_filesize' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_readoxin_filesize' ) );


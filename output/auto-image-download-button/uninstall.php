<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cdb_button_text_color');
delete_site_option('cdb_button_text_color');
delete_option('cdb_button_color');
delete_site_option('cdb_button_color');
delete_option('cdb_button_size');
delete_site_option('cdb_button_size');
delete_option('cdb_button_border');
delete_site_option('cdb_button_border');
delete_option('cdb_button_radius');
delete_site_option('cdb_button_radius');
delete_option('cdb_button_padding');
delete_site_option('cdb_button_padding');
delete_option('cdb_button_margin');
delete_site_option('cdb_button_margin');
delete_option('cdb_button_text');
delete_site_option('cdb_button_text');
delete_option('cdb_button_hover_color');
delete_site_option('cdb_button_hover_color');
delete_option('cdb_post_types');
delete_site_option('cdb_post_types');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cdb_enable_download_button' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cdb_enable_download_button' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cdb_enable_download_button' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cdb_enable_download_button' ) );


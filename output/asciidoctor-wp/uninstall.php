<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpasc_mode_select');
delete_site_option('wpasc_mode_select');
delete_option('wpasc_check_post');
delete_site_option('wpasc_check_post');
delete_option('wpasc_check_page');
delete_site_option('wpasc_check_page');
delete_option('wpasc_check_asciidoccss');
delete_site_option('wpasc_check_asciidoccss');
delete_option('wpasc_check_custum');
delete_site_option('wpasc_check_custum');
delete_option('wpasc_check_image');
delete_site_option('wpasc_check_image');
delete_option('wpasc_check_highlight');
delete_site_option('wpasc_check_highlight');
delete_option('wpasc_check_table_paragraph');
delete_site_option('wpasc_check_table_paragraph');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpasciidoc_checkbox' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpasciidoc_checkbox' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpasciidoc_checkbox' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpasciidoc_checkbox' ) );


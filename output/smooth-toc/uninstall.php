<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smoothtoc_title');
delete_site_option('smoothtoc_title');
delete_option('smoothtoc_position');
delete_site_option('smoothtoc_position');
delete_option('smoothtoc_headings');
delete_site_option('smoothtoc_headings');
delete_option('smoothtoc_bg_color');
delete_site_option('smoothtoc_bg_color');
delete_option('smoothtoc_text_color');
delete_site_option('smoothtoc_text_color');
delete_option('smoothtoc_font_size');
delete_site_option('smoothtoc_font_size');
delete_option('smoothtoc_width');
delete_site_option('smoothtoc_width');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_smoothtoc_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_smoothtoc_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_smoothtoc_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_smoothtoc_disabled' ) );


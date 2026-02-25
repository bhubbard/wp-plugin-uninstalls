<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jialiub_singular_label');
delete_site_option('jialiub_singular_label');
delete_option('jialiub_plural_label');
delete_site_option('jialiub_plural_label');
delete_option('jialiub_action_label');
delete_site_option('jialiub_action_label');
delete_option('jialiub_bookmark_enabled_post_types');
delete_site_option('jialiub_bookmark_enabled_post_types');
delete_option('jialiub_show_label');
delete_site_option('jialiub_show_label');
delete_option('jialiub_show_count');
delete_site_option('jialiub_show_count');
delete_option('jialiub_button_position');
delete_site_option('jialiub_button_position');
delete_option('jialiub_button_color');
delete_site_option('jialiub_button_color');
delete_option('jialiub_button_hover_color');
delete_site_option('jialiub_button_hover_color');
delete_option('jialiub_button_active_color');
delete_site_option('jialiub_button_active_color');
delete_option('jialiub_font_size');
delete_site_option('jialiub_font_size');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'jialiub_bookmarks_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'jialiub_bookmarks_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'jialiub_bookmarks_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'jialiub_bookmarks_count' ) );


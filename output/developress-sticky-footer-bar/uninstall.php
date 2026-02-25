<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_stiky_bar');
delete_site_option('active_stiky_bar');
delete_option('background_bar');
delete_site_option('background_bar');
delete_option('font_color');
delete_site_option('font_color');
delete_option('font_size');
delete_site_option('font_size');
delete_option('icon_size');
delete_site_option('icon_size');
delete_option('font_size_other_label');
delete_site_option('font_size_other_label');
delete_option('translation_close_link');
delete_site_option('translation_close_link');
delete_option('translation_menu_link');
delete_site_option('translation_menu_link');
delete_option('number_items_first_menu');
delete_site_option('number_items_first_menu');
delete_option('visibility');
delete_site_option('visibility');
delete_option('custom_css');
delete_site_option('custom_css');
delete_option('menu_select');
delete_site_option('menu_select');
delete_option('display_menu_right_left');
delete_site_option('display_menu_right_left');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_menu_item_extra' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_menu_item_extra' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_menu_item_extra' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_menu_item_extra' ) );


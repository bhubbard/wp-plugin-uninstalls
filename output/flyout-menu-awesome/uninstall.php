<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_flyout_menu_menu_button_style_choice');
delete_site_option('_flyout_menu_menu_button_style_choice');
delete_option('_flyout_menu_button_menu_style');
delete_site_option('_flyout_menu_button_menu_style');
delete_option('_flyout_menu_custom_menu_label');
delete_site_option('_flyout_menu_custom_menu_label');
delete_option('_flyout_menu_button_menu_position_screen');
delete_site_option('_flyout_menu_button_menu_position_screen');
delete_option('_flyout_menu_btn_icon_pos');
delete_site_option('_flyout_menu_btn_icon_pos');
delete_option('carbon_custom_sidebars');
delete_site_option('carbon_custom_sidebars');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );


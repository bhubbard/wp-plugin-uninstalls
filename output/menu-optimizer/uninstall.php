<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ommo_menu_id');
delete_site_option('ommo_menu_id');
delete_option('ommo_menu_type');
delete_site_option('ommo_menu_type');
delete_option('ommo_menu_layout');
delete_site_option('ommo_menu_layout');
delete_option('ommo_css_source');
delete_site_option('ommo_css_source');
delete_option('ommo_generated_menus');
delete_site_option('ommo_generated_menus');
delete_option('ommo_cache_version');
delete_site_option('ommo_cache_version');
delete_option('ommo_custom_css');
delete_site_option('ommo_custom_css');
delete_option('ommo_submenu_filename');
delete_site_option('ommo_submenu_filename');
delete_option('ommo_top_menu_filename');
delete_site_option('ommo_top_menu_filename');

// Clear Cron Jobs
wp_clear_scheduled_hook('ommo_regenerate_cache');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_megamenu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_megamenu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_megamenu' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_megamenu' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('site_assets_manage');
delete_site_option('site_assets_manage');
delete_option('site_assets_view');
delete_site_option('site_assets_view');
delete_option('site_assets_position');
delete_site_option('site_assets_position');
delete_option('site_assets_style');
delete_site_option('site_assets_style');
delete_option('site_assets_style_custom_border_size');
delete_site_option('site_assets_style_custom_border_size');
delete_option('site_assets_style_custom_border_color');
delete_site_option('site_assets_style_custom_border_color');
delete_option('site_assets_style_custom_title_color');
delete_site_option('site_assets_style_custom_title_color');
delete_option('site_assets_style_custom_link_color');
delete_site_option('site_assets_style_custom_link_color');
delete_option('site_assets_style_custom_hover_color');
delete_site_option('site_assets_style_custom_hover_color');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_site_assets_urls' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_site_assets_urls' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_site_assets_urls' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_site_assets_urls' ) );


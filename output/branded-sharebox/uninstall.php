<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('branded_sharebox_api_key');
delete_site_option('branded_sharebox_api_key');
delete_option('branded_sharebox_domain');
delete_site_option('branded_sharebox_domain');
delete_option('branded_sharebox_show_on');
delete_site_option('branded_sharebox_show_on');
delete_option('branded_sharebox_show_at');
delete_site_option('branded_sharebox_show_at');
delete_option('branded_sharebox_show_counter');
delete_site_option('branded_sharebox_show_counter');
delete_option('branded_sharebox_align_where');
delete_site_option('branded_sharebox_align_where');
delete_option('branded_sharebox_button_style');
delete_site_option('branded_sharebox_button_style');
delete_option('branded_sharebox_should_float');
delete_site_option('branded_sharebox_should_float');
delete_option('branded_sharebox_show_non_singular');
delete_site_option('branded_sharebox_show_non_singular');
delete_option('branded_sharebox_icon_color');
delete_site_option('branded_sharebox_icon_color');
delete_option('branded_sharebox_icon_color_custom');
delete_site_option('branded_sharebox_icon_color_custom');
delete_option('branded_sharebox_icon_size');
delete_site_option('branded_sharebox_icon_size');
delete_option('branded_sharebox_icon_size_custom');
delete_site_option('branded_sharebox_icon_size_custom');
delete_option('branded_sharebox_url_box');
delete_site_option('branded_sharebox_url_box');
delete_option('branded_sharebox_url_social_link');
delete_site_option('branded_sharebox_url_social_link');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'branded_sharebox_link_click_counter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'branded_sharebox_link_click_counter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'branded_sharebox_link_click_counter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'branded_sharebox_link_click_counter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'branded_sharebox_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'branded_sharebox_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'branded_sharebox_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'branded_sharebox_url' ) );


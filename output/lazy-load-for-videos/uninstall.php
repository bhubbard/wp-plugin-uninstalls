<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lly_opt_support_for_widgets');
delete_site_option('lly_opt_support_for_widgets');
delete_option('ll_opt_support_for_tablepress');
delete_site_option('ll_opt_support_for_tablepress');
delete_option('lly_opt');
delete_site_option('lly_opt');
delete_option('llv_opt');
delete_site_option('llv_opt');
delete_option('ll_opt_load_scripts');
delete_site_option('ll_opt_load_scripts');
delete_option('ll_opt_button_style');
delete_site_option('ll_opt_button_style');
delete_option('ll_opt_thumbnail_size');
delete_site_option('ll_opt_thumbnail_size');
delete_option('ll_opt_thumbnail_quality');
delete_site_option('ll_opt_thumbnail_quality');
delete_option('ll_opt_customcss');
delete_site_option('ll_opt_customcss');
delete_option('ll_attribute');
delete_site_option('ll_attribute');
delete_option('lly_opt_title');
delete_site_option('lly_opt_title');
delete_option('lly_opt_overlay_text');
delete_site_option('lly_opt_overlay_text');
delete_option('lly_opt_player_preroll');
delete_site_option('lly_opt_player_preroll');
delete_option('lly_opt_player_postroll');
delete_site_option('lly_opt_player_postroll');
delete_option('lly_opt_player_colour_progress');
delete_site_option('lly_opt_player_colour_progress');
delete_option('lly_opt_player_loadpolicy');
delete_site_option('lly_opt_player_loadpolicy');
delete_option('lly_opt_player_controls');
delete_site_option('lly_opt_player_controls');
delete_option('lly_opt_cookies');
delete_site_option('lly_opt_cookies');
delete_option('llv_opt_title');
delete_site_option('llv_opt_title');
delete_option('llv_opt_overlay_text');
delete_site_option('llv_opt_overlay_text');
delete_option('llv_opt_player_colour');
delete_site_option('llv_opt_player_colour');
delete_option('llv_opt_cookies');
delete_site_option('llv_opt_cookies');
delete_option('lazyloadvideos_deferred_admin_notices');
delete_site_option('lazyloadvideos_deferred_admin_notices');
delete_option('llv_opt_player_preroll');
delete_site_option('llv_opt_player_preroll');
delete_option('llv_opt_player_postroll');
delete_site_option('llv_opt_player_postroll');
delete_option('lly_opt_thumbnail_quality');
delete_site_option('lly_opt_thumbnail_quality');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lazyload_thumbnail_quality' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lazyload_thumbnail_quality' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lazyload_thumbnail_quality' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lazyload_thumbnail_quality' ) );


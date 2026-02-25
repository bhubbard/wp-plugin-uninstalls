<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('strpgn_apply_to');
delete_site_option('strpgn_apply_to');
delete_option('strpgn_star_color_empty');
delete_site_option('strpgn_star_color_empty');
delete_option('strpgn_star_color_filled');
delete_site_option('strpgn_star_color_filled');
delete_option('strpgn_star_color_hover');
delete_site_option('strpgn_star_color_hover');
delete_option('strpgn_container_alignment');
delete_site_option('strpgn_container_alignment');
delete_option('strpgn_star_size');
delete_site_option('strpgn_star_size');
delete_option('strpgn_average_font_size');
delete_site_option('strpgn_average_font_size');
delete_option('strpgn_average_margin_top');
delete_site_option('strpgn_average_margin_top');
delete_option('strpgn_average_margin_right');
delete_site_option('strpgn_average_margin_right');
delete_option('strpgn_average_margin_bottom');
delete_site_option('strpgn_average_margin_bottom');
delete_option('strpgn_average_margin_left');
delete_site_option('strpgn_average_margin_left');
delete_option('strpgn_stars_margin_top');
delete_site_option('strpgn_stars_margin_top');
delete_option('strpgn_stars_margin_right');
delete_site_option('strpgn_stars_margin_right');
delete_option('strpgn_stars_margin_bottom');
delete_site_option('strpgn_stars_margin_bottom');
delete_option('strpgn_stars_margin_left');
delete_site_option('strpgn_stars_margin_left');
delete_option('strpgn_details_font_size');
delete_site_option('strpgn_details_font_size');
delete_option('strpgn_total_margin_top');
delete_site_option('strpgn_total_margin_top');
delete_option('strpgn_total_margin_right');
delete_site_option('strpgn_total_margin_right');
delete_option('strpgn_total_margin_bottom');
delete_site_option('strpgn_total_margin_bottom');
delete_option('strpgn_total_margin_left');
delete_site_option('strpgn_total_margin_left');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'strpgn_hide_auto_display' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'strpgn_hide_auto_display' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'strpgn_hide_auto_display' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'strpgn_hide_auto_display' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('it_block_heading_position');
delete_site_option('it_block_heading_position');
delete_option('it_cell_title_color');
delete_site_option('it_cell_title_color');
delete_option('it_cell_hover_title_color');
delete_site_option('it_cell_hover_title_color');
delete_option('it_cell_font_color');
delete_site_option('it_cell_font_color');
delete_option('it_cell_hover_font_color');
delete_site_option('it_cell_hover_font_color');
delete_option('it_read_more_font_color');
delete_site_option('it_read_more_font_color');
delete_option('it_display_mode');
delete_site_option('it_display_mode');
delete_option('it_highlight_mode');
delete_site_option('it_highlight_mode');
delete_option('cell_highlight_color');
delete_site_option('cell_highlight_color');
delete_option('it_single_cell_slug_url');
delete_site_option('it_single_cell_slug_url');
delete_option('it_cell_hover');
delete_site_option('it_cell_hover');
delete_option('it_title_hover');
delete_site_option('it_title_hover');
delete_option('it_read_more');
delete_site_option('it_read_more');
delete_option('readmore_label');
delete_site_option('readmore_label');
delete_option('it_load_default_css');
delete_site_option('it_load_default_css');
delete_option('it_vertical_posts_per_row');
delete_site_option('it_vertical_posts_per_row');
delete_option('fixed_highlight');
delete_site_option('fixed_highlight');
delete_option('it_clean_on_deactive');
delete_site_option('it_clean_on_deactive');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_it_short_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_it_short_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_it_short_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_it_short_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_it_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_it_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_it_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_it_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_it_cell_class' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_it_cell_class' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_it_cell_class' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_it_cell_class' ) );


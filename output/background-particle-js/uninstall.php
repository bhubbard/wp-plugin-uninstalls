<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('number_of_particles');
delete_site_option('number_of_particles');
delete_option('color_of_particles');
delete_site_option('color_of_particles');
delete_option('type_of_particle');
delete_site_option('type_of_particle');
delete_option('border_width_of_particles');
delete_site_option('border_width_of_particles');
delete_option('border_color_of_particles');
delete_site_option('border_color_of_particles');
delete_option('polygon_sides_of_particles');
delete_site_option('polygon_sides_of_particles');
delete_option('image_as_particle');
delete_site_option('image_as_particle');
delete_option('opacity_of_particles');
delete_site_option('opacity_of_particles');
delete_option('random_opacity_of_particles');
delete_site_option('random_opacity_of_particles');
delete_option('size_of_particles');
delete_site_option('size_of_particles');
delete_option('line_linked_color_of_particles');
delete_site_option('line_linked_color_of_particles');
delete_option('opacity_of_particles_line');
delete_site_option('opacity_of_particles_line');
delete_option('line_width_between_particles');
delete_site_option('line_width_between_particles');
delete_option('speed_of_particles');
delete_site_option('speed_of_particles');
delete_option('direction_of_particles');
delete_site_option('direction_of_particles');
delete_option('random_movement_of_particles');
delete_site_option('random_movement_of_particles');
delete_option('out_mode_of_particles');
delete_site_option('out_mode_of_particles');
delete_option('bounce_between_particles');
delete_site_option('bounce_between_particles');
delete_option('enable_hover_on_particles');
delete_site_option('enable_hover_on_particles');
delete_option('hover_mode_on_particles');
delete_site_option('hover_mode_on_particles');
delete_option('enable_click_on_particles');
delete_site_option('enable_click_on_particles');
delete_option('click_mode_on_particles');
delete_site_option('click_mode_on_particles');
delete_option('grab_distance_on_particles');
delete_site_option('grab_distance_on_particles');
delete_option('grab_line_opacity_on_particles');
delete_site_option('grab_line_opacity_on_particles');
delete_option('bubble_distance_on_particles');
delete_site_option('bubble_distance_on_particles');
delete_option('bubble_size_on_hover_particles');
delete_site_option('bubble_size_on_hover_particles');
delete_option('hover_event_duration_particles');
delete_site_option('hover_event_duration_particles');
delete_option('bubble_line_opacity_on_particles');
delete_site_option('bubble_line_opacity_on_particles');
delete_option('speed_on_hover_particles');
delete_site_option('speed_on_hover_particles');
delete_option('repulse_distance_on_particles');
delete_site_option('repulse_distance_on_particles');
delete_option('repulse_duration_on_particles');
delete_site_option('repulse_duration_on_particles');
delete_option('push_nb_particles');
delete_site_option('push_nb_particles');
delete_option('remove_number_on_click_particles');
delete_site_option('remove_number_on_click_particles');
delete_option('background_color_of_banner');
delete_site_option('background_color_of_banner');
delete_option('background_image_of_banner');
delete_site_option('background_image_of_banner');
delete_option('height_of_banner');
delete_site_option('height_of_banner');
delete_option('banner_header_title_color');
delete_site_option('banner_header_title_color');
delete_option('banner_header_title_font_size');
delete_site_option('banner_header_title_font_size');
delete_option('banner_header_title');
delete_site_option('banner_header_title');
delete_option('banner_description_text_color');
delete_site_option('banner_description_text_color');
delete_option('banner_description_text_size');
delete_site_option('banner_description_text_size');
delete_option('banner_description');
delete_site_option('banner_description');
delete_option('banner_call_to_action_bg');
delete_site_option('banner_call_to_action_bg');
delete_option('banner_call_to_action_color');
delete_site_option('banner_call_to_action_color');
delete_option('banner_call_to_action_url');
delete_site_option('banner_call_to_action_url');
delete_option('banner_call_to_action');
delete_site_option('banner_call_to_action');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );


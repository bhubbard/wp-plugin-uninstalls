<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mrtext_radio');
delete_site_option('mrtext_radio');
delete_option('mrtext_text_field_1');
delete_site_option('mrtext_text_field_1');
delete_option('mrtext_text_field_1_link');
delete_site_option('mrtext_text_field_1_link');
delete_option('mrtext_text_field_2');
delete_site_option('mrtext_text_field_2');
delete_option('mrtext_text_field_2_link');
delete_site_option('mrtext_text_field_2_link');
delete_option('mrtext_text_field_3');
delete_site_option('mrtext_text_field_3');
delete_option('mrtext_text_field_3_link');
delete_site_option('mrtext_text_field_3_link');
delete_option('mrtext_text_field_4');
delete_site_option('mrtext_text_field_4');
delete_option('mrtext_text_field_4_link');
delete_site_option('mrtext_text_field_4_link');
delete_option('mrtext_text_field_5');
delete_site_option('mrtext_text_field_5');
delete_option('mrtext_text_field_5_link');
delete_site_option('mrtext_text_field_5_link');
delete_option('mrtext_bg_color_option');
delete_site_option('mrtext_bg_color_option');
delete_option('mrtext_color_option');
delete_site_option('mrtext_color_option');
delete_option('mrtext_hover_color_option');
delete_site_option('mrtext_hover_color_option');
delete_option('mrtext_font_size');
delete_site_option('mrtext_font_size');
delete_option('mrtext_font_weight');
delete_site_option('mrtext_font_weight');
delete_option('mrtext_font_direction');
delete_site_option('mrtext_font_direction');
delete_option('mrtext_font_scroll_delay');
delete_site_option('mrtext_font_scroll_delay');
delete_option('mmrtext_radio_before_after');
delete_site_option('mmrtext_radio_before_after');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mrt_dismissed_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mrt_dismissed_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mrt_dismissed_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mrt_dismissed_notice' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('urtbenz_custom_words_per_minute');
delete_site_option('urtbenz_custom_words_per_minute');
delete_option('urtbenz_display_on_pages');
delete_site_option('urtbenz_display_on_pages');
delete_option('urtbenz_display_on_posts');
delete_site_option('urtbenz_display_on_posts');
delete_option('urtbenz_custom_reading_prefix');
delete_site_option('urtbenz_custom_reading_prefix');
delete_option('urtbenz_custom_reading_postfix');
delete_site_option('urtbenz_custom_reading_postfix');
delete_option('urtbenz_custom_text_alignment');
delete_site_option('urtbenz_custom_text_alignment');
delete_option('urtbenz_custom_reading_time_position');
delete_site_option('urtbenz_custom_reading_time_position');
delete_option('urtbenz_custom_color');
delete_site_option('urtbenz_custom_color');
delete_option('urtbenz_custom_font_style');
delete_site_option('urtbenz_custom_font_style');
delete_option('urtbenz_custom_font_size');
delete_site_option('urtbenz_custom_font_size');
delete_option('urtbenz_custom_font_weight');
delete_site_option('urtbenz_custom_font_weight');
delete_option('urtbenz_words_per_minute');
delete_site_option('urtbenz_words_per_minute');
delete_option('urtbenz_reading_prefix');
delete_site_option('urtbenz_reading_prefix');
delete_option('urtbenz_reading_postfix');
delete_site_option('urtbenz_reading_postfix');
delete_option('urtbenz_color');
delete_site_option('urtbenz_color');
delete_option('urtbenz_font_style');
delete_site_option('urtbenz_font_style');
delete_option('urtbenz_font_size');
delete_site_option('urtbenz_font_size');
delete_option('urtbenz_font_weight');
delete_site_option('urtbenz_font_weight');
delete_option('urtbenz_text_alignment');
delete_site_option('urtbenz_text_alignment');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('evas_settings');
delete_site_option('evas_settings');
delete_option('evas_statement_settings');
delete_site_option('evas_statement_settings');
delete_option('evas_cust_show_open_button');
delete_site_option('evas_cust_show_open_button');
delete_option('evas_cust_button_tabindex');
delete_site_option('evas_cust_button_tabindex');
delete_option('evas_cust_button_position');
delete_site_option('evas_cust_button_position');
delete_option('evas_cust_button_caption');
delete_site_option('evas_cust_button_caption');
delete_option('evas_cust_button_icon');
delete_site_option('evas_cust_button_icon');
delete_option('evas_cust_button_icon_position');
delete_site_option('evas_cust_button_icon_position');
delete_option('evas_cust_button_size');
delete_site_option('evas_cust_button_size');
delete_option('evas_cust_button_margin');
delete_site_option('evas_cust_button_margin');
delete_option('evas_cust_button_padding');
delete_site_option('evas_cust_button_padding');
delete_option('evas_cust_button_border_radius');
delete_site_option('evas_cust_button_border_radius');
delete_option('evas_cust_button_color');
delete_site_option('evas_cust_button_color');
delete_option('evas_cust_button_color_hover');
delete_site_option('evas_cust_button_color_hover');
delete_option('evas_cust_button_bgcolor');
delete_site_option('evas_cust_button_bgcolor');
delete_option('evas_cust_button_bgcolor_hover');
delete_site_option('evas_cust_button_bgcolor_hover');
delete_option('evas_cust_button_entrance_timeout');
delete_site_option('evas_cust_button_entrance_timeout');
delete_option('evas_cust_button_entrance_animation');
delete_site_option('evas_cust_button_entrance_animation');
delete_option('evas_cust_button_hover_animation');
delete_site_option('evas_cust_button_hover_animation');
delete_option('evas_cust_button_show_after_scrolling_desktop');
delete_site_option('evas_cust_button_show_after_scrolling_desktop');
delete_option('evas_cust_button_show_after_scrolling_mobile');
delete_site_option('evas_cust_button_show_after_scrolling_mobile');
delete_option('evas_cust_popup_position');
delete_site_option('evas_cust_popup_position');
delete_option('evas_cust_popup_draggable');
delete_site_option('evas_cust_popup_draggable');
delete_option('evas_cust_popup_background_color');
delete_site_option('evas_cust_popup_background_color');
delete_option('evas_cust_popup_key_color');
delete_site_option('evas_cust_popup_key_color');
delete_option('evas_cust_popup_text_color');
delete_site_option('evas_cust_popup_text_color');
delete_option('evas_cust_popup_background_color_dark');
delete_site_option('evas_cust_popup_background_color_dark');
delete_option('evas_cust_popup_key_color_dark');
delete_site_option('evas_cust_popup_key_color_dark');
delete_option('evas_cust_popup_text_color_dark');
delete_site_option('evas_cust_popup_text_color_dark');
delete_option('evas_cust_popup_border_radius');
delete_site_option('evas_cust_popup_border_radius');
delete_option('evas_cust_popup_shadow');
delete_site_option('evas_cust_popup_shadow');
delete_option('evas_cust_popup_overlay');
delete_site_option('evas_cust_popup_overlay');
delete_option('evas_cust_popup_overlay_color');
delete_site_option('evas_cust_popup_overlay_color');
delete_option('evas_cust_popup_close_anywhere');
delete_site_option('evas_cust_popup_close_anywhere');
delete_option('evas_cust_reset_button');
delete_site_option('evas_cust_reset_button');
delete_option('evas_cust_hide_button');
delete_site_option('evas_cust_hide_button');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'evas_cust_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('evas_tts_api_key');
delete_site_option('evas_tts_api_key');
delete_option('evas_tts_language');
delete_site_option('evas_tts_language');
delete_option('evas_tts_voice_name');
delete_site_option('evas_tts_voice_name');
delete_option('evas_tts_speaking_rate');
delete_site_option('evas_tts_speaking_rate');
delete_option('evas_tts_pitch');
delete_site_option('evas_tts_pitch');
delete_option('evas_tts_cache_enabled');
delete_site_option('evas_tts_cache_enabled');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'evas_tts_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('evas_usage_analytics_settings');
delete_site_option('evas_usage_analytics_settings');
delete_option('evas_vk_enabled');
delete_site_option('evas_vk_enabled');
delete_option('evas_vk_default_layout');
delete_site_option('evas_vk_default_layout');
delete_option('evas_vk_theme');
delete_site_option('evas_vk_theme');
delete_option('evas_vk_key_size');
delete_site_option('evas_vk_key_size');
delete_option('evas_vk_show_on_focus');
delete_site_option('evas_vk_show_on_focus');
delete_option('evas_vk_sound_enabled');
delete_site_option('evas_vk_sound_enabled');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'evas_vk_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('evas_vn_enabled');
delete_site_option('evas_vn_enabled');
delete_option('evas_vn_language');
delete_site_option('evas_vn_language');
delete_option('evas_vn_continuous');
delete_site_option('evas_vn_continuous');
delete_option('evas_vn_show_indicator');
delete_site_option('evas_vn_show_indicator');
delete_option('evas_vn_feedback_sound');
delete_site_option('evas_vn_feedback_sound');
delete_option('evas_vn_visual_feedback');
delete_site_option('evas_vn_visual_feedback');
delete_option('evas_vn_sensitivity');
delete_site_option('evas_vn_sensitivity');
delete_option('evas_vn_auto_start');
delete_site_option('evas_vn_auto_start');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'evas_vn_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('evas_vn_custom_commands');
delete_site_option('evas_vn_custom_commands');

// Clear Cron Jobs
wp_clear_scheduled_hook('evas_tts_cache_cleanup');


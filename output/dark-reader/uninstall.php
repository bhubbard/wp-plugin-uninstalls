<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dark_reader_pro_custom_css_enabled');
delete_site_option('dark_reader_pro_custom_css_enabled');
delete_option('dark_reader_pro_custom_css');
delete_site_option('dark_reader_pro_custom_css');
delete_option('dark_reader_pro_exclude_selectors');
delete_site_option('dark_reader_pro_exclude_selectors');
delete_option('dark_reader_pro_exclude_all_images');
delete_site_option('dark_reader_pro_exclude_all_images');
delete_option('dark_reader_pro_logo_selectors');
delete_site_option('dark_reader_pro_logo_selectors');
delete_option('dark_reader_pro_exclude_videos');
delete_site_option('dark_reader_pro_exclude_videos');
delete_option('dark_reader_pro_schedule_enabled');
delete_site_option('dark_reader_pro_schedule_enabled');
delete_option('dark_reader_pro_schedule_type');
delete_site_option('dark_reader_pro_schedule_type');
delete_option('dark_reader_pro_schedule_start_time');
delete_site_option('dark_reader_pro_schedule_start_time');
delete_option('dark_reader_pro_schedule_end_time');
delete_site_option('dark_reader_pro_schedule_end_time');
delete_option('dark_reader_pro_admin_dark_mode');
delete_site_option('dark_reader_pro_admin_dark_mode');
delete_option('dark_reader_pro_admin_brightness');
delete_site_option('dark_reader_pro_admin_brightness');
delete_option('dark_reader_pro_admin_contrast');
delete_site_option('dark_reader_pro_admin_contrast');
delete_option('dark_reader_pro_admin_auto_detect');
delete_site_option('dark_reader_pro_admin_auto_detect');
delete_option('bdt_biggopti_dismissals');
delete_site_option('bdt_biggopti_dismissals');
delete_option('dark_reader_brightness');
delete_site_option('dark_reader_brightness');
delete_option('dark_reader_contrast');
delete_site_option('dark_reader_contrast');
delete_option('dark_reader_sepia');
delete_site_option('dark_reader_sepia');
delete_option('dark_reader_grayscale');
delete_site_option('dark_reader_grayscale');
delete_option('dark_reader_text_stroke');
delete_site_option('dark_reader_text_stroke');
delete_option('dark_reader_filter_mode');
delete_site_option('dark_reader_filter_mode');
delete_option('dark_reader_use_system_color_scheme');
delete_site_option('dark_reader_use_system_color_scheme');
delete_option('dark_reader_enable_for_pdfs');
delete_site_option('dark_reader_enable_for_pdfs');
delete_option('dark_reader_dark_scheme_background');
delete_site_option('dark_reader_dark_scheme_background');
delete_option('dark_reader_dark_scheme_text');
delete_site_option('dark_reader_dark_scheme_text');
delete_option('dark_reader_immediate_modify');
delete_site_option('dark_reader_immediate_modify');
delete_option('dark_reader_default_dark_mode');
delete_site_option('dark_reader_default_dark_mode');
delete_option('dark_reader_toggle_position');
delete_site_option('dark_reader_toggle_position');
delete_option('dark_reader_toggle_style');
delete_site_option('dark_reader_toggle_style');
delete_option('dark_reader_pro_page_visibility_mode');
delete_site_option('dark_reader_pro_page_visibility_mode');
delete_option('dark_reader_pro_custom_light_icon');
delete_site_option('dark_reader_pro_custom_light_icon');
delete_option('dark_reader_pro_custom_dark_icon');
delete_site_option('dark_reader_pro_custom_dark_icon');

// Delete Transients
delete_transient('_dark_reader_welcome_screen_activation_redirect');
delete_site_transient('_dark_reader_welcome_screen_activation_redirect');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('AI24AI_version');
delete_site_option('AI24AI_version');
delete_option('AI24AI_enable_widget');
delete_site_option('AI24AI_enable_widget');
delete_option('AI24AI_active');
delete_site_option('AI24AI_active');
delete_option('AI24AI_functions_option');
delete_site_option('AI24AI_functions_option');
delete_option('AI24AI_font_settings');
delete_site_option('AI24AI_font_settings');
delete_option('AI24AI_assistant_name');
delete_site_option('AI24AI_assistant_name');
delete_option('AI24AI_assistant_description');
delete_site_option('AI24AI_assistant_description');
delete_option('AI24AI_assistant_image');
delete_site_option('AI24AI_assistant_image');
delete_option('AI24AI_assistant_id');
delete_site_option('AI24AI_assistant_id');
delete_option('AI24AI_widget_pages');
delete_site_option('AI24AI_widget_pages');
delete_option('AI24AI_chat_input_placeholder');
delete_site_option('AI24AI_chat_input_placeholder');
delete_option('AI24AI_exit_confirmation_text');
delete_site_option('AI24AI_exit_confirmation_text');
delete_option('AI24AI_confirm_exit_button');
delete_site_option('AI24AI_confirm_exit_button');
delete_option('AI24AI_cancel_exit_button');
delete_site_option('AI24AI_cancel_exit_button');
delete_option('AI24AI_toggle_image');
delete_site_option('AI24AI_toggle_image');
delete_option('AI24AI_sidebar_content');
delete_site_option('AI24AI_sidebar_content');
delete_option('AI24AI_sidebar_text');
delete_site_option('AI24AI_sidebar_text');
delete_option('AI24AI_api_key');
delete_site_option('AI24AI_api_key');
delete_option('AI24AI_text_options');
delete_site_option('AI24AI_text_options');
delete_option('AI24AI_api_option');
delete_site_option('AI24AI_api_option');
delete_option('AI24AI_api_keys');
delete_site_option('AI24AI_api_keys');
delete_option('AI24AI_functions_generate');
delete_site_option('AI24AI_functions_generate');
delete_option('AI24AI_widget_show_hide_mode');
delete_site_option('AI24AI_widget_show_hide_mode');
delete_option('AI24AI_header_color');
delete_site_option('AI24AI_header_color');
delete_option('AI24AI_widget_corner_color');
delete_site_option('AI24AI_widget_corner_color');
delete_option('AI24AI_input_border_glow_color');
delete_site_option('AI24AI_input_border_glow_color');
delete_option('AI24AI_icon_color');
delete_site_option('AI24AI_icon_color');
delete_option('AI24AI_widget_position');
delete_site_option('AI24AI_widget_position');
delete_option('AI24AI_assistant_context_message');
delete_site_option('AI24AI_assistant_context_message');
delete_option('AI24AI_placement_options');
delete_site_option('AI24AI_placement_options');

// Delete Transients
delete_transient('settings_saved');
delete_site_transient('settings_saved');


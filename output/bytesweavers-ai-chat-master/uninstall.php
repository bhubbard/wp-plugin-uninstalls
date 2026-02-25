<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aicw_db_version');
delete_site_option('aicw_db_version');
delete_option('aicw_display_option');
delete_site_option('aicw_display_option');
delete_option('aicw_specific_pages');
delete_site_option('aicw_specific_pages');
delete_option('aicw_chat_width');
delete_site_option('aicw_chat_width');
delete_option('aicw_chat_height');
delete_site_option('aicw_chat_height');
delete_option('aicw_typing_indicator_text');
delete_site_option('aicw_typing_indicator_text');
delete_option('aicw_enable_icon_animation');
delete_site_option('aicw_enable_icon_animation');
delete_option('aicw_widget_icon');
delete_site_option('aicw_widget_icon');
delete_option('aicw_custom_icon_svg');
delete_site_option('aicw_custom_icon_svg');
delete_option('aicw_openai_key');
delete_site_option('aicw_openai_key');
delete_option('aicw_anthropic_key');
delete_site_option('aicw_anthropic_key');
delete_option('aicw_gemini_key');
delete_site_option('aicw_gemini_key');
delete_option('aicw_selected_model');
delete_site_option('aicw_selected_model');
delete_option('aicw_widget_title');
delete_site_option('aicw_widget_title');
delete_option('aicw_widget_subtitle');
delete_site_option('aicw_widget_subtitle');
delete_option('aicw_primary_color');
delete_site_option('aicw_primary_color');
delete_option('aicw_chat_position');
delete_site_option('aicw_chat_position');
delete_option('aicw_temperature');
delete_site_option('aicw_temperature');
delete_option('aicw_max_tokens');
delete_site_option('aicw_max_tokens');
delete_option('aicw_enable_widget');
delete_site_option('aicw_enable_widget');
delete_option('aicw_custom_instructions');
delete_site_option('aicw_custom_instructions');
delete_option('aicw_knowledge_base');
delete_site_option('aicw_knowledge_base');
delete_option('aicw_top_p');
delete_site_option('aicw_top_p');
delete_option('aicw_frequency_penalty');
delete_site_option('aicw_frequency_penalty');
delete_option('aicw_presence_penalty');
delete_site_option('aicw_presence_penalty');
delete_option('aicw_knowledge_base_summary');
delete_site_option('aicw_knowledge_base_summary');
delete_option('aicw_assistant_logo');
delete_site_option('aicw_assistant_logo');


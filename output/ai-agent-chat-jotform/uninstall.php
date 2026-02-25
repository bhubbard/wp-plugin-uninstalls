<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ai_agent_chat_top');
delete_site_option('ai_agent_chat_top');
delete_option('ai_agent_chat_left');
delete_site_option('ai_agent_chat_left');
delete_option('ai_agent_chat_bottom');
delete_site_option('ai_agent_chat_bottom');
delete_option('ai_agent_chat_right');
delete_site_option('ai_agent_chat_right');
delete_option('ai_agent_chat_size');
delete_site_option('ai_agent_chat_size');
delete_option('ai_agent_chat_bg_color');
delete_site_option('ai_agent_chat_bg_color');
delete_option('ai_agent_tooltip_bg');
delete_site_option('ai_agent_tooltip_bg');
delete_option('ai_agent_tooltip_color');
delete_site_option('ai_agent_tooltip_color');
delete_option('ai_agent_modal_bg');
delete_site_option('ai_agent_modal_bg');
delete_option('ai_agent_pulse_glow');
delete_site_option('ai_agent_pulse_glow');
delete_option('ai_agent_chat_location');
delete_site_option('ai_agent_chat_location');
delete_option('ai_agent_welcome_font_size');
delete_site_option('ai_agent_welcome_font_size');
delete_option('ai_agent_welcome_message');
delete_site_option('ai_agent_welcome_message');
delete_option('ai_agent_disable_chat');
delete_site_option('ai_agent_disable_chat');
delete_option('ai_agent_disable_chat_mobile');
delete_site_option('ai_agent_disable_chat_mobile');
delete_option('ai_agent_excluded_urls');
delete_site_option('ai_agent_excluded_urls');
delete_option('ai_agent_chat_image');
delete_site_option('ai_agent_chat_image');
delete_option('ai_agent_form_id');
delete_site_option('ai_agent_form_id');


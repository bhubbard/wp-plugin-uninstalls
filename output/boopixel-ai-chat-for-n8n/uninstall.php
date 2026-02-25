<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('boopixel_ai_chat_for_n8n_chat_icon');
delete_site_option('boopixel_ai_chat_for_n8n_chat_icon');
delete_option('boopixel_ai_chat_for_n8n_chat_name');
delete_site_option('boopixel_ai_chat_for_n8n_chat_name');
delete_option('boopixel_ai_chat_for_n8n_welcome_message');
delete_site_option('boopixel_ai_chat_for_n8n_welcome_message');
delete_option('boopixel_ai_chat_for_n8n_primary_color');
delete_site_option('boopixel_ai_chat_for_n8n_primary_color');
delete_option('boopixel_ai_chat_for_n8n_secondary_color');
delete_site_option('boopixel_ai_chat_for_n8n_secondary_color');
delete_option('boopixel_ai_chat_for_n8n_chat_bg_color');
delete_site_option('boopixel_ai_chat_for_n8n_chat_bg_color');
delete_option('boopixel_ai_chat_for_n8n_text_color');
delete_site_option('boopixel_ai_chat_for_n8n_text_color');
delete_option('boopixel_ai_chat_for_n8n_font_family');
delete_site_option('boopixel_ai_chat_for_n8n_font_family');
delete_option('boopixel_ai_chat_for_n8n_font_size');
delete_site_option('boopixel_ai_chat_for_n8n_font_size');
delete_option('boopixel_ai_chat_for_n8n_api_url');
delete_site_option('boopixel_ai_chat_for_n8n_api_url');
delete_option('boopixel_ai_chat_for_n8n_language');
delete_site_option('boopixel_ai_chat_for_n8n_language');
delete_option('boopixel_ai_chat_for_n8n_cache_version');
delete_site_option('boopixel_ai_chat_for_n8n_cache_version');


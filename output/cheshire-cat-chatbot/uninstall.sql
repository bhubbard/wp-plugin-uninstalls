-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cheshire_plugin_global_chat', 'cheshire_plugin_logged_in_only', 'cheshire_plugin_content_type_mode', 'cheshire_plugin_show_in_homepage', 'cheshire_plugin_enabled_post_types', 'cheshire_plugin_enabled_taxonomies', 'cheshire_plugin_default_state', 'cheshire_plugin_enable_websocket', 'cheshire_plugin_url', 'cheshire_plugin_websocket_url', 'cheshire_plugin_token', 'cheshire_plugin_enable_context', 'cheshire_plugin_enable_reinforcement', 'cheshire_plugin_reinforcement_message', 'cheshire_plugin_enable_related_links', 'cheshire_plugin_minimum_link_score', 'cheshire_plugin_link_text', 'cheshire_chat_background_color', 'cheshire_chat_text_color', 'cheshire_chat_user_text_color', 'cheshire_chat_user_message_color', 'cheshire_chat_bot_text_color', 'cheshire_chat_bot_message_color', 'cheshire_chat_header_color', 'cheshire_chat_footer_color', 'cheshire_chat_font_family', 'cheshire_chat_welcome_message', 'cheshire_chat_avatar_image', 'cheshire_plugin_input_placeholder', 'cheshire_chat_header_buttons_color', 'cheshire_chat_header_buttons_color_hover', 'cheshire_chat_header_buttons_color_hover_background', 'cheshire_chat_header_buttons_color_focus', 'cheshire_chat_button_color', 'cheshire_chat_button_color_hover', 'cheshire_chat_button_color_hover_background', 'cheshire_chat_button_color_focus', 'cheshire_chat_button_color_active', 'cheshire_chat_input_color', 'cheshire_chat_input_text_color', 'cheshire_chat_error_msg_bg', 'cheshire_chat_error_msg_border', 'cheshire_chat_error_msg_color', 'cheshire_chat_border_color', 'cheshire_plugin_show_predefined_in_content', 'cheshire_plugin_predefined_responses_title', 'cheshire_plugin_enable_declarative_memory', 'cheshire_plugin_declarative_memory_post_types', 'cheshire_plugin_predefined_responses', 'cheshire_plugin_product_category_predefined_responses');
DELETE FROM wp_options WHERE option_name IN ('cheshire_plugin_max_predefined_questions', 'cheshire_chat_selected_theme');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cheshire_exclude_from_declarative_memory', '_cheshire_predefined_responses');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cheshire_exclude_from_declarative_memory', '_cheshire_predefined_responses');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cheshire_exclude_from_declarative_memory', '_cheshire_predefined_responses');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cheshire_exclude_from_declarative_memory', '_cheshire_predefined_responses');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpt_override_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpt_override_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpt_override_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpt_override_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpt_field_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpt_field_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpt_field_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpt_field_%';


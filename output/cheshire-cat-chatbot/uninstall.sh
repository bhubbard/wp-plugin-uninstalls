#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cheshire_plugin_global_chat'
wp option delete 'cheshire_plugin_logged_in_only'
wp option delete 'cheshire_plugin_content_type_mode'
wp option delete 'cheshire_plugin_show_in_homepage'
wp option delete 'cheshire_plugin_enabled_post_types'
wp option delete 'cheshire_plugin_enabled_taxonomies'
wp option delete 'cheshire_plugin_default_state'
wp option delete 'cheshire_plugin_enable_websocket'
wp option delete 'cheshire_plugin_url'
wp option delete 'cheshire_plugin_websocket_url'
wp option delete 'cheshire_plugin_token'
wp option delete 'cheshire_plugin_enable_context'
wp option delete 'cheshire_plugin_enable_reinforcement'
wp option delete 'cheshire_plugin_reinforcement_message'
wp option delete 'cheshire_plugin_enable_related_links'
wp option delete 'cheshire_plugin_minimum_link_score'
wp option delete 'cheshire_plugin_link_text'
wp option delete 'cheshire_chat_background_color'
wp option delete 'cheshire_chat_text_color'
wp option delete 'cheshire_chat_user_text_color'
wp option delete 'cheshire_chat_user_message_color'
wp option delete 'cheshire_chat_bot_text_color'
wp option delete 'cheshire_chat_bot_message_color'
wp option delete 'cheshire_chat_header_color'
wp option delete 'cheshire_chat_footer_color'
wp option delete 'cheshire_chat_font_family'
wp option delete 'cheshire_chat_welcome_message'
wp option delete 'cheshire_chat_avatar_image'
wp option delete 'cheshire_plugin_input_placeholder'
wp option delete 'cheshire_chat_header_buttons_color'
wp option delete 'cheshire_chat_header_buttons_color_hover'
wp option delete 'cheshire_chat_header_buttons_color_hover_background'
wp option delete 'cheshire_chat_header_buttons_color_focus'
wp option delete 'cheshire_chat_button_color'
wp option delete 'cheshire_chat_button_color_hover'
wp option delete 'cheshire_chat_button_color_hover_background'
wp option delete 'cheshire_chat_button_color_focus'
wp option delete 'cheshire_chat_button_color_active'
wp option delete 'cheshire_chat_input_color'
wp option delete 'cheshire_chat_input_text_color'
wp option delete 'cheshire_chat_error_msg_bg'
wp option delete 'cheshire_chat_error_msg_border'
wp option delete 'cheshire_chat_error_msg_color'
wp option delete 'cheshire_chat_border_color'
wp option delete 'cheshire_plugin_show_predefined_in_content'
wp option delete 'cheshire_plugin_predefined_responses_title'
wp option delete 'cheshire_plugin_enable_declarative_memory'
wp option delete 'cheshire_plugin_declarative_memory_post_types'
wp option delete 'cheshire_plugin_predefined_responses'
wp option delete 'cheshire_plugin_product_category_predefined_responses'
wp option delete 'cheshire_plugin_max_predefined_questions'
wp option delete 'cheshire_chat_selected_theme'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpt_override_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpt_override_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpt_override_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpt_override_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpt_field_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpt_field_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpt_field_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpt_field_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cheshire_exclude_from_declarative_memory'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cheshire_exclude_from_declarative_memory'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cheshire_exclude_from_declarative_memory'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cheshire_exclude_from_declarative_memory'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cheshire_predefined_responses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cheshire_predefined_responses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cheshire_predefined_responses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cheshire_predefined_responses'"

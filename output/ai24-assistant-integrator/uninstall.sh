#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'AI24AI_version'
wp option delete 'AI24AI_enable_widget'
wp option delete 'AI24AI_active'
wp option delete 'AI24AI_functions_option'
wp option delete 'AI24AI_font_settings'
wp option delete 'AI24AI_assistant_name'
wp option delete 'AI24AI_assistant_description'
wp option delete 'AI24AI_assistant_image'
wp option delete 'AI24AI_assistant_id'
wp option delete 'AI24AI_widget_pages'
wp option delete 'AI24AI_chat_input_placeholder'
wp option delete 'AI24AI_exit_confirmation_text'
wp option delete 'AI24AI_confirm_exit_button'
wp option delete 'AI24AI_cancel_exit_button'
wp option delete 'AI24AI_toggle_image'
wp option delete 'AI24AI_sidebar_content'
wp option delete 'AI24AI_sidebar_text'
wp option delete 'AI24AI_api_key'
wp option delete 'AI24AI_text_options'
wp option delete 'AI24AI_api_option'
wp option delete 'AI24AI_api_keys'
wp option delete 'AI24AI_functions_generate'
wp option delete 'AI24AI_widget_show_hide_mode'
wp option delete 'AI24AI_header_color'
wp option delete 'AI24AI_widget_corner_color'
wp option delete 'AI24AI_input_border_glow_color'
wp option delete 'AI24AI_icon_color'
wp option delete 'AI24AI_widget_position'
wp option delete 'AI24AI_assistant_context_message'
wp option delete 'AI24AI_placement_options'

# Delete Transients
wp transient delete 'settings_saved'


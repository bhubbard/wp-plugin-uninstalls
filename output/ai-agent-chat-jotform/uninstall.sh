#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ai_agent_chat_top'
wp option delete 'ai_agent_chat_left'
wp option delete 'ai_agent_chat_bottom'
wp option delete 'ai_agent_chat_right'
wp option delete 'ai_agent_chat_size'
wp option delete 'ai_agent_chat_bg_color'
wp option delete 'ai_agent_tooltip_bg'
wp option delete 'ai_agent_tooltip_color'
wp option delete 'ai_agent_modal_bg'
wp option delete 'ai_agent_pulse_glow'
wp option delete 'ai_agent_chat_location'
wp option delete 'ai_agent_welcome_font_size'
wp option delete 'ai_agent_welcome_message'
wp option delete 'ai_agent_disable_chat'
wp option delete 'ai_agent_disable_chat_mobile'
wp option delete 'ai_agent_excluded_urls'
wp option delete 'ai_agent_chat_image'
wp option delete 'ai_agent_form_id'


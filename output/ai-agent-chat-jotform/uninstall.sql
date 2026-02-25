-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ai_agent_chat_top', 'ai_agent_chat_left', 'ai_agent_chat_bottom', 'ai_agent_chat_right', 'ai_agent_chat_size', 'ai_agent_chat_bg_color', 'ai_agent_tooltip_bg', 'ai_agent_tooltip_color', 'ai_agent_modal_bg', 'ai_agent_pulse_glow', 'ai_agent_chat_location', 'ai_agent_welcome_font_size', 'ai_agent_welcome_message', 'ai_agent_disable_chat', 'ai_agent_disable_chat_mobile', 'ai_agent_excluded_urls', 'ai_agent_chat_image', 'ai_agent_form_id');


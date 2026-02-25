-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ai_assistant_api_key', 'ai_assistant_model', 'ai_assistant_system', 'ai_assistant_welcome_message', 'ai_assistant_header_bg', 'ai_assistant_icon_bg');


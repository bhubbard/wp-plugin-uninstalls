-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('echoai_assistant_image', 'echoai_post_types', 'echoai_floating_button', 'echoai_wp_api_key', 'echoai_chat_instructions', 'echoai_tooltip_text', 'echoai_greeting_message', 'echoai_assistant_id', 'echoai_debug_info', 'echoai_last_api_request', 'echoai_last_api_response', 'echoai_integration_errors', 'echoai_pending_assistant_id');


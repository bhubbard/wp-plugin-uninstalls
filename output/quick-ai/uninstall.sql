-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('my_plugin_tracking_record', 'quickai_chatgpt_api_key', 'quickai_chatgpt_ai_name', 'quickai_chatgpt_ai_role', 'quickai_chatgpt_user_name', 'quickai_chatgpt_placeholder', 'quickai_chatgpt_send_text');


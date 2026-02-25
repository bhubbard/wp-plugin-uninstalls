-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wise_chat_wp_users_cache', 'wc_admin_settings_message', 'wc_admin_settings_error_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wc_ai_role_description', 'wc_ai_type', 'wc_ai_model', 'wc_ai_assistant_id', 'wise_chat_message_id', 'wise_chat_channel', 'wise_chat');
DELETE FROM wp_usermeta WHERE meta_key IN ('wc_ai_role_description', 'wc_ai_type', 'wc_ai_model', 'wc_ai_assistant_id', 'wise_chat_message_id', 'wise_chat_channel', 'wise_chat');
DELETE FROM wp_termmeta WHERE meta_key IN ('wc_ai_role_description', 'wc_ai_type', 'wc_ai_model', 'wc_ai_assistant_id', 'wise_chat_message_id', 'wise_chat_channel', 'wise_chat');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wc_ai_role_description', 'wc_ai_type', 'wc_ai_model', 'wc_ai_assistant_id', 'wise_chat_message_id', 'wise_chat_channel', 'wise_chat');


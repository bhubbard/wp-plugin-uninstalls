-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pulse_chat_ai_options', 'pulse_chat_ai_license_check', 'pulse_chat_ai_license_last_check');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_conversation_messages', '_conversation_page_id', '_conversation_model', '_conversation_start_time', '_conversation_end_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('_conversation_messages', '_conversation_page_id', '_conversation_model', '_conversation_start_time', '_conversation_end_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('_conversation_messages', '_conversation_page_id', '_conversation_model', '_conversation_start_time', '_conversation_end_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_conversation_messages', '_conversation_page_id', '_conversation_model', '_conversation_start_time', '_conversation_end_time');


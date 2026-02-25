-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cresentai_api_key', 'cresentai_default_mode', 'cresentai_widget_title', 'cresentai_title_text_color', 'cresentai_title_background_color', 'cresentai_initial_prompt', 'cresentai_chat_background_color', 'cresentai_chat_message_background_color', 'cresentai_chat_message_text_color', 'cresentai_enforce_mandatory_userdetails_collection', 'cresentai_userdetails_text_color', 'cresentai_userdetails_label_color');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('menia_token', 'menia_web_chat_enabled', 'menia_web_chat_embed_code', 'menia_settings', 'menia_widget', 'menia_web_chat');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enable_chat_to_text', 'chat_to_text_token', 'enable_web_scheduler', 'web_scheduler_token');


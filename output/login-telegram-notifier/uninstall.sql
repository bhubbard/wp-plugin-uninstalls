-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ltgntf_bot_token', 'ltgntf_chat_id', 'ltgntf_enabled');


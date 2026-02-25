-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chatster_enc_key', 'chatster_version', 'ch_welcome_notice_viewed', 'chatster_api_key', 'chatster_bot_qa_options', 'chatster_bot_options', 'chatster_chat_options');


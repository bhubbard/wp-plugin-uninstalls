-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('missive_chat', 'missive_chat_account_id', 'missive_chat_main_color', 'message_welcome', 'message_help', 'message_identify', 'message_error', 'message_title', 'message_online', 'message_offline', 'message_connecting', 'message_chat', 'message_internet', 'message_identifyName', 'message_identifyEmail', 'message_identifySubmit', 'message_identifyRequired', 'message_identifyThanks');


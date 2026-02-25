-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('frontapp_auth', 'frontapp_inbox', 'frontapp_freshchat', 'frontapp_chat_id');


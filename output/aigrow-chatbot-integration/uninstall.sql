-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aigrow_chatbot_token', 'aigrow_chatbot_title', 'aigrow_chatbot_ws_url');


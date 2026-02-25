-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cliengo_session', 'cliengo_chatbot_token', 'cliengo_chatbot_position', 'position_chatbot');


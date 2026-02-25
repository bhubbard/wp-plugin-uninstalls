-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('setterai_chatbot_id', 'setterai_chatbot_status');


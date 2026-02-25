-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thinkstack_chatbot_id', 'thinkstack_chatbot_enabled');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('supportai_apikey', 'supportai_active_chatbot_id');


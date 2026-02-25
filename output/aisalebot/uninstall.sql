-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aicsapp_enabled', 'aicsapp_chatbot_id');


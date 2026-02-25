-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ailig_knowflow_chatbot_settings', 'ailig_knowflow_chatbot_activate');


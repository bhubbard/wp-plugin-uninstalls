-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CWPS_settings', 'CWPS_chatbot_content', 'cw_chatbot_block_content', 'attempted_login', 'update_plugins');


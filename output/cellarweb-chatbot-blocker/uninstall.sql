-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CWCB_settings', 'CWCB_chatbot_content', 'cw_chatbot_block_content');


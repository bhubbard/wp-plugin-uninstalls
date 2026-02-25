-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qcld_wb_chatbot_theme', 'qcld_woo_chatbot_theme', 'enable_chat_session');


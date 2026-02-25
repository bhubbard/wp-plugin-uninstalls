-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rd_button_chat_options', 'rd_button_chat_setup_options', 'rewrite_rules', 'rd_button_chat_setup', 'rd_button_chat_backup_options');


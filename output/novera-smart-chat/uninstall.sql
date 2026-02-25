-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('novera_smart_chat_options', 'novera_smart_chat_db_version');


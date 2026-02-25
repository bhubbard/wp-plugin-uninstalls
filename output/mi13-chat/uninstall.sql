-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mi13_chat', 'mi13_chat_content', 'mi13_chat_online');


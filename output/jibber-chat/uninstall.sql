-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jibber_chat_ID', 'jibber_chat_hideFrontPage');


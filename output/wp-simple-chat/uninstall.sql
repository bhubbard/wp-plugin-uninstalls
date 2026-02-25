-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_simple_chat_options');
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_simple_chat_greeting', 'wp_simple_chat_disabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_simple_chat_greeting', 'wp_simple_chat_disabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_simple_chat_greeting', 'wp_simple_chat_disabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_simple_chat_greeting', 'wp_simple_chat_disabled');


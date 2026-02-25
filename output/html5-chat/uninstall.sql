-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('html5chat_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('html5chat_token', 'html5chat_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('html5chat_token', 'html5chat_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('html5chat_token', 'html5chat_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('html5chat_token', 'html5chat_email');


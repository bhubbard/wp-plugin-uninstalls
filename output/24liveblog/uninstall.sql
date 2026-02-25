-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lb24_token', 'lb24_uid', 'lb24_refresh_token', 'lb24_uname');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lb24_token', 'lb24_uid', 'lb24_refresh_token', 'lb24_uname');
DELETE FROM wp_usermeta WHERE meta_key IN ('lb24_token', 'lb24_uid', 'lb24_refresh_token', 'lb24_uname');
DELETE FROM wp_termmeta WHERE meta_key IN ('lb24_token', 'lb24_uid', 'lb24_refresh_token', 'lb24_uname');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lb24_token', 'lb24_uid', 'lb24_refresh_token', 'lb24_uname');


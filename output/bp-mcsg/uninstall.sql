-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('server-livechat-db-version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('minecraft_username', 'whitelist_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('minecraft_username', 'whitelist_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('minecraft_username', 'whitelist_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('minecraft_username', 'whitelist_status');


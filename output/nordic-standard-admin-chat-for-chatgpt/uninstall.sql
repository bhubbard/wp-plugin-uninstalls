-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('msac_admin_api_key', 'msac_admin_model');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('msac_admin_chats');
DELETE FROM wp_usermeta WHERE meta_key IN ('msac_admin_chats');
DELETE FROM wp_termmeta WHERE meta_key IN ('msac_admin_chats');
DELETE FROM wp_commentmeta WHERE meta_key IN ('msac_admin_chats');


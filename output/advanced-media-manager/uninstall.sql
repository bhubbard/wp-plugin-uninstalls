-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tabsetting', 'tabsync', 'tabdownload');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('smack_storage_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('smack_storage_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('smack_storage_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('smack_storage_status');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mgupreloader_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mgtup_hind_update_message_ignore');
DELETE FROM wp_usermeta WHERE meta_key IN ('mgtup_hind_update_message_ignore');
DELETE FROM wp_termmeta WHERE meta_key IN ('mgtup_hind_update_message_ignore');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mgtup_hind_update_message_ignore');


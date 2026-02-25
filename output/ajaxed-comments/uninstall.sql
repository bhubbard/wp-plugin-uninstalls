-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ac_inline_edit', 'ac_messages');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_trash_meta_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_trash_meta_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_trash_meta_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_trash_meta_status');


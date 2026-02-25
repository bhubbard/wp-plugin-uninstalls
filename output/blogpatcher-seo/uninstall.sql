-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('classic-editor-replace', 'blogpatcher_email');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wporg_meta_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wporg_meta_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wporg_meta_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wporg_meta_key');


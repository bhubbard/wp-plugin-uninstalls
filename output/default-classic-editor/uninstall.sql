-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default-classic-editor-replace', 'default-classic-editor-allow-users');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('default-classic-editor-remember');
DELETE FROM wp_usermeta WHERE meta_key IN ('default-classic-editor-remember');
DELETE FROM wp_termmeta WHERE meta_key IN ('default-classic-editor-remember');
DELETE FROM wp_commentmeta WHERE meta_key IN ('default-classic-editor-remember');


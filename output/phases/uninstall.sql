-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('phases_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('phases_note');
DELETE FROM wp_usermeta WHERE meta_key IN ('phases_note');
DELETE FROM wp_termmeta WHERE meta_key IN ('phases_note');
DELETE FROM wp_commentmeta WHERE meta_key IN ('phases_note');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('doc8_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('doc8_attachments');
DELETE FROM wp_usermeta WHERE meta_key IN ('doc8_attachments');
DELETE FROM wp_termmeta WHERE meta_key IN ('doc8_attachments');
DELETE FROM wp_commentmeta WHERE meta_key IN ('doc8_attachments');


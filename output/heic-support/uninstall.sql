-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('heic_support_format', 'heic_support_replace');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_heic_support_copy_of', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_heic_support_copy_of', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_heic_support_copy_of', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_heic_support_copy_of', '_wp_attached_file');


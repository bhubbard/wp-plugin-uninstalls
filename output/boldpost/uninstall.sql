-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('boldpo_version');
DELETE FROM wp_options WHERE option_name LIKE 'boldpo_block_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_is_featured');
DELETE FROM wp_usermeta WHERE meta_key IN ('_is_featured');
DELETE FROM wp_termmeta WHERE meta_key IN ('_is_featured');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_is_featured');


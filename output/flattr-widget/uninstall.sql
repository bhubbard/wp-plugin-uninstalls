-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flattr_author_uid', 'flattr_uid', 'flattr_compact');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('flattr_uid');
DELETE FROM wp_usermeta WHERE meta_key IN ('flattr_uid');
DELETE FROM wp_termmeta WHERE meta_key IN ('flattr_uid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('flattr_uid');


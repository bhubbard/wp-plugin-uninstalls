-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sts_color_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sts_author_role', '_sts_author_organization');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sts_author_role', '_sts_author_organization');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sts_author_role', '_sts_author_organization');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sts_author_role', '_sts_author_organization');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';


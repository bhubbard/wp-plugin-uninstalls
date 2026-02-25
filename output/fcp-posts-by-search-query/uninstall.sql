-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%variants';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%variants';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%variants';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%variants';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%query';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%query';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%query';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%query';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%list';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%list';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%list';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%list';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%posts';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%posts';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%posts';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%posts';


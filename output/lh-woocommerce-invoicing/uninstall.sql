-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-subject';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-subject';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-subject';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-subject';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-heading';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-heading';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-heading';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-heading';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-message';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-message';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-message';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-message';


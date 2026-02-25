-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'nickname');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'nickname');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'nickname');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'nickname');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_ex_attr_staff';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_ex_attr_staff';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_ex_attr_staff';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_ex_attr_staff';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_mypage_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_mypage_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_mypage_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_mypage_id';


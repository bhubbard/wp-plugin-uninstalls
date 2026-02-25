-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mksso_qq', 'mksso_dy', 'mksso_wx', 'mksso_wb');
DELETE FROM wp_options WHERE option_name LIKE 'mksso_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_avatar';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_avatar';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_avatar';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_avatar';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_openid';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_openid';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_openid';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_openid';


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_tend_ccj_custom_css');
DELETE FROM wp_options WHERE option_name LIKE '_tend_ccj_custom_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tend_ccj_custom_css');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tend_ccj_custom_css');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tend_ccj_custom_css');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tend_ccj_custom_css');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_tend_ccj_custom_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_tend_ccj_custom_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_tend_ccj_custom_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_tend_ccj_custom_%';


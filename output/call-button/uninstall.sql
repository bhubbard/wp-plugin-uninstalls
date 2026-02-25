-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%phone';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%phone';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%phone';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%phone';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%disable';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%disable';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%disable';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%disable';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%style';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%style';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%style';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%style';


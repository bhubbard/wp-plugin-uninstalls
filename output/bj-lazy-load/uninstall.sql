-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bj_lazy_load_skip_post');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bj_lazy_load_skip_post');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bj_lazy_load_skip_post');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bj_lazy_load_skip_post');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_error_data_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_error_data_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_error_data_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_error_data_%';


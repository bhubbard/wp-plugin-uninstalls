-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%languages';
DELETE FROM wp_options WHERE option_name LIKE '%access_token';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%project_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%project_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%project_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%project_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%project_status';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%project_status';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%project_status';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%project_status';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%progress_tra';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%progress_tra';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%progress_tra';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%progress_tra';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%progress_prf';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%progress_prf';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%progress_prf';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%progress_prf';


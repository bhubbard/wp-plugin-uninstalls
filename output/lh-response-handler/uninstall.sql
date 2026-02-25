-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-redirect_url';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-redirect_url';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-redirect_url';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-redirect_url';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-matching_url';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-matching_url';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-matching_url';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-matching_url';


-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%condition-post-ids';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%condition-post-ids';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%condition-post-ids';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%condition-post-ids';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%condition';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%condition';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%condition';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%condition';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%roles';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%roles';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%roles';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%roles';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%taxonomies';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%taxonomies';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%taxonomies';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%taxonomies';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%options-pages';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%options-pages';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%options-pages';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%options-pages';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%setting';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%setting';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%setting';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%setting';


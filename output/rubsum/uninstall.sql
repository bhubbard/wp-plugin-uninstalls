-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%employees_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%employees_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%employees_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%employees_name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%employees_age';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%employees_age';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%employees_age';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%employees_age';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%employees_degree';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%employees_degree';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%employees_degree';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%employees_degree';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%employees_chember';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%employees_chember';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%employees_chember';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%employees_chember';


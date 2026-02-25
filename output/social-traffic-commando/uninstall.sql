-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('NS_SNAutoPoster', 'nxs_log_db_table_version', 'NSX_LogToEmail', 'NSX_LastTChecked', 'NS_SNriPosts', 'NSX_PostsQuery');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('snapFB', 'snapTW');
DELETE FROM wp_usermeta WHERE meta_key IN ('snapFB', 'snapTW');
DELETE FROM wp_termmeta WHERE meta_key IN ('snapFB', 'snapTW');
DELETE FROM wp_commentmeta WHERE meta_key IN ('snapFB', 'snapTW');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'snap%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'snap%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'snap%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'snap%';


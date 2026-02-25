-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auto_update_plugins', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cuar_private_file_file', 'cuar_private_page_view_count', '__cuar_session');
DELETE FROM wp_usermeta WHERE meta_key IN ('cuar_private_file_file', 'cuar_private_page_view_count', '__cuar_session');
DELETE FROM wp_termmeta WHERE meta_key IN ('cuar_private_file_file', 'cuar_private_page_view_count', '__cuar_session');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cuar_private_file_file', 'cuar_private_page_view_count', '__cuar_session');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'cuar_gateway_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'cuar_gateway_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'cuar_gateway_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cuar_gateway_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'cuar/private-content/files/download_count?user=%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'cuar/private-content/files/download_count?user=%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'cuar/private-content/files/download_count?user=%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cuar/private-content/files/download_count?user=%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'cuar_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'cuar_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'cuar_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cuar_%';


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cfd_settings', 'links_updated_date_format', 'cfd_search_settings', 'cfd_keyword_search_settings', 'cfd', 'cfd_entries_channel_children');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_is_reviewed', '_total_response', '_response_manualy', '_response_1', '_response_date_1', '_fields', '_properties', '_meta', '_subject', '_from', '_from_name', '_from_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('_is_reviewed', '_total_response', '_response_manualy', '_response_1', '_response_date_1', '_fields', '_properties', '_meta', '_subject', '_from', '_from_name', '_from_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('_is_reviewed', '_total_response', '_response_manualy', '_response_1', '_response_date_1', '_fields', '_properties', '_meta', '_subject', '_from', '_from_name', '_from_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_is_reviewed', '_total_response', '_response_manualy', '_response_1', '_response_date_1', '_fields', '_properties', '_meta', '_subject', '_from', '_from_name', '_from_email');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_field_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_field_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_field_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_field_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_response_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_response_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_response_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_response_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_response_date_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_response_date_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_response_date_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_response_date_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';


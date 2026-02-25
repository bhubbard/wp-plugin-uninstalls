-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpbgd_application_name', 'cpbgd_developer_key', 'cpbgd_client_id', 'cpbgd_client_secret', 'cpbgd_api_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cpbgd_google_doc_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('cpbgd_google_doc_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('cpbgd_google_doc_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cpbgd_google_doc_id');


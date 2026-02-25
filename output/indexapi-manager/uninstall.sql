-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('indexapi_token', 'indexapi_new_post_index_request', 'indexapi_post_update_index_request', 'indexapi_allowed_post_type', 'indexapi_allowed_taxonomies', 'indexAPI_allowed_taxonomies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('indexapi_publish', 'indexapi_last_submit', 'send_index_request', 'send_request');
DELETE FROM wp_usermeta WHERE meta_key IN ('indexapi_publish', 'indexapi_last_submit', 'send_index_request', 'send_request');
DELETE FROM wp_termmeta WHERE meta_key IN ('indexapi_publish', 'indexapi_last_submit', 'send_index_request', 'send_request');
DELETE FROM wp_commentmeta WHERE meta_key IN ('indexapi_publish', 'indexapi_last_submit', 'send_index_request', 'send_request');


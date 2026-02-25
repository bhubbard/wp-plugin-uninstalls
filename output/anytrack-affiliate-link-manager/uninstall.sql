-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aalm_options');
DELETE FROM wp_options WHERE option_name LIKE '%_options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('source_url', 'query_params', 'target_url', 'redirect_count', 'last_access_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('source_url', 'query_params', 'target_url', 'redirect_count', 'last_access_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('source_url', 'query_params', 'target_url', 'redirect_count', 'last_access_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('source_url', 'query_params', 'target_url', 'redirect_count', 'last_access_date');


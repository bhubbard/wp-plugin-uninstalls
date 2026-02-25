-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('index_algolia_glob', 'algolia_indexing_indices', 'index_algolia_application_id', 'index_algolia_search_api_key', 'index_algolia_write_api_key', 'index_algolia_index_prefix', 'index_algolia_js_vars', 'index_algolia_indices');
DELETE FROM wp_options WHERE option_name LIKE 'index_algolia_%';


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gcs_api_key', 'gcs_cse_id', 'gcs_search_type');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpbase_cache_options', 'wpbase_req_cache_new', 'wpbase_check_site');


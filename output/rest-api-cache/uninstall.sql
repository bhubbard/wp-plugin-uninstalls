-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apiendpoints', 'rest_cache_time', 'rest_cache_datetime');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('A_u_cache_options', 'A_u_cache_clear_cache_time');


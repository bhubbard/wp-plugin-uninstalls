-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cleavr_auto_clear_cache', 'cleavr_nginx_cache_hook');


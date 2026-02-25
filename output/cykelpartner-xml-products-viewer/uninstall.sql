-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cp_td', 'cp_pa', 'cp_cache_timeout');


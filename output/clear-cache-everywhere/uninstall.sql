-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules', 'clear_cache_everywhere_last_results');
DELETE FROM wp_options WHERE option_name LIKE '%_hosting_purge_url';


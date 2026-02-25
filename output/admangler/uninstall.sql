-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('AdMangler_db_version', 'AdMangler_code_version', 'AdMangler_cache_buster');


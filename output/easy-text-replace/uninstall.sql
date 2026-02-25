-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('etrp_version', 'etrp_cache_version', 'etrp_delete_data_on_uninstall', 'etrp_max_replacements', 'etrp_cache_expiration', 'settings_errors');


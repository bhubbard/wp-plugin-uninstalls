-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sqlite_object_cache_settings', 'sqlite_object_cache_version', 'sqlite-object-cache-flush-on-update');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';


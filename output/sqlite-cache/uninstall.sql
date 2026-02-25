-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('litecache_path', 'litecache_multisite', 'litecache_domain', 'litecache_purge');


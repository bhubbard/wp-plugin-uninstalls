-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hamecache_post_types', 'hamecache_extra_pages', 'rewrite_rules');
DELETE FROM wp_options WHERE option_name LIKE 'hamecache_%';


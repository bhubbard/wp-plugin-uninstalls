-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('c3_settings', 'nginxchampuru-cache_expires', 'nginxchampuru-cache_levels', 'nginxchampuru-cache_dir', 'nginxchampuru-comment', 'nginxchampuru-publish', 'nginxchampuru-enable_flush');


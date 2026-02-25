-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nginxchampuru-cache_expires', 'nginxchampuru-enable_flush', 'nginxchampuru-cache_dir', 'nginxchampuru-cache_levels', 'nginxchampuru-publish', 'nginxchampuru-comment', 'nginxchampuru-add_last_modified', 'cron', 'nginxchampuru_flush');
DELETE FROM wp_options WHERE option_name LIKE 'nginxchampuru-%';


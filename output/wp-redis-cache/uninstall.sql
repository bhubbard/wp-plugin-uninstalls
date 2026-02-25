-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ajc_exceptions', 'minify_enabled_check', 'minify_css_on', 'head_detect', 'foot_detect', 'css_load_type', 'css_minify', 'cssminify_enabled', 'rediscache_enabled', 'rediscache_server', 'rediscache_port', 'rediscache_pass', 'rediscache_database', 'rediscache_ttl');


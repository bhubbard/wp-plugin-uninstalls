-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('prism_detached_theme', 'prism_detached_extensions', 'prism_detached_cache_keys', 'prism-detached-invisibles', 'prism-detached-autolinker');


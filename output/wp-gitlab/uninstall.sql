-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpgitlab_cache_time', 'wpgitlab_url', 'wpgitlab_api_key', 'wpgitlab_clear_cache');


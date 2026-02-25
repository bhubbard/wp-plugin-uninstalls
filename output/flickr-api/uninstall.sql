-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flickr_api_key', 'flickr_display', 'flickr_galleria_theme', 'flickr_machinetag', 'flickr_username', 'flickr_api_secret', 'flickr_api_cache_time', 'flickr_nsid');


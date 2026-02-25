-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fshow_flickr_api_key', 'fshow_default_photosetid', 'fshow_default_width', 'fshow_default_height', 'fshow_gallery_short_url', 'fshow_performance_mode', 'fshow_flickr_cache_time', 'fshow_uniqid', 'fshow_default_username', 'fshow_default_thumburl', 'fshow_users', 'fshow_photosets');
DELETE FROM wp_options WHERE option_name LIKE 'fshow_remote_%';


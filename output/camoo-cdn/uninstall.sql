-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('camoo_cdn_cache_settings', 'ossdl_off_cdn_url', 'ossdl_off_blog_url', 'wp_camoo_cdn_oss', 'wp_camoo_cdn_db_version', 'wp_camoo_cdn_sync_message');


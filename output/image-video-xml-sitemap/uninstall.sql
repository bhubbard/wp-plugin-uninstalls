-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ivxs_enable_image_sitemap', 'ivxs_image_sitemap_filename', 'ivxs_enable_video_sitemap', 'ivxs_video_sitemap_filename');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gn-sitemap-image-feed-mu-version', 'xml_sitemap_image', 'apg_image_sitemap_plugin');


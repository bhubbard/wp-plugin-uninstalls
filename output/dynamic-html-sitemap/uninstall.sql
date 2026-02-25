-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dynamic_sitemap_exclude_items', 'dynamic_sitemap_background_color', 'dynamic_sitemap_title_color');


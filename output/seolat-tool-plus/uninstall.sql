-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('301_redirects', 'api_manager_sl_plus_activated', 'seo_lat_tool_plus', 'simple_wp_disp_categories', 'simple_wp_disp_tags', 'simple_wp_disp_authors', 'simple_wp_block_urls', 'simple_wp_other_urls', 'simple_wp_last_updated', 'simple_wp_attr_link', 'simple_wp_disp_sitemap_order', 'simple_wp_premium_code', 'simple_wp_sitemap_version', 'sl_version', 'update_plugins', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'twitter', 'author_title', 'author_desc');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'twitter', 'author_title', 'author_desc');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'twitter', 'author_title', 'author_desc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'twitter', 'author_title', 'author_desc');


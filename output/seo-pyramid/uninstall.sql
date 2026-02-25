-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seo_pyramid_schema_settings_option_name', 'seo_pyramid_option_name', 'media_selector_attachment_id', 'seo_pyramid_og_and_tc_option_name', 'seo_pyramid_sitemap_option_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('seo_pyramid_description', 'seo_pyramid_title', 'seo_pyramid_robots', 'seo_pyramid_redirect', 'seo_pyramid_redirect_switch', 'seo_pyramid_redirect_date', 'seo_pyramid_canonical', 'seo_pyramid_change_frequency', 'seo_pyramid_page_priority', 'seo_pyramid_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('seo_pyramid_description', 'seo_pyramid_title', 'seo_pyramid_robots', 'seo_pyramid_redirect', 'seo_pyramid_redirect_switch', 'seo_pyramid_redirect_date', 'seo_pyramid_canonical', 'seo_pyramid_change_frequency', 'seo_pyramid_page_priority', 'seo_pyramid_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('seo_pyramid_description', 'seo_pyramid_title', 'seo_pyramid_robots', 'seo_pyramid_redirect', 'seo_pyramid_redirect_switch', 'seo_pyramid_redirect_date', 'seo_pyramid_canonical', 'seo_pyramid_change_frequency', 'seo_pyramid_page_priority', 'seo_pyramid_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('seo_pyramid_description', 'seo_pyramid_title', 'seo_pyramid_robots', 'seo_pyramid_redirect', 'seo_pyramid_redirect_switch', 'seo_pyramid_redirect_date', 'seo_pyramid_canonical', 'seo_pyramid_change_frequency', 'seo_pyramid_page_priority', 'seo_pyramid_status');


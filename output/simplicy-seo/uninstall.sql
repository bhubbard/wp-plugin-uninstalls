-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seo_title_code', 'seo_desc_code', 'seo_robot_home_code', 'seo_meta_author', 'seo_meta_contact', 'seo_meta_copyright', 'seo_geo_region', 'seo_geo_placename', 'seo_geo_position', 'seo_ICBM', 'seo_app_id', 'seo_admins', 'display_og_url', 'display_og_site_name', 'display_og_description', 'display_og_type', 'display_og_image', 'upload_image', 'display_og_url_post', 'display_og_title', 'display_og_description_post', 'display_og_type_post', 'display_og_image_post', 'seo_key_code', 'seo_key_news_keywords', 'seo_tracking_code', 'seo_index_archives', 'csmt_options', ' display_og_title', ' display_og_image_post');
DELETE FROM wp_options WHERE option_name LIKE 'tag_meta_key_%';
DELETE FROM wp_options WHERE option_name LIKE 'cat_meta_key_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('seo_desc_post_code', 'seo_title_sp', 'seo_keys_post', 'seo_url_post', 'seo_news_keywords', 'seo_post_robots');
DELETE FROM wp_usermeta WHERE meta_key IN ('seo_desc_post_code', 'seo_title_sp', 'seo_keys_post', 'seo_url_post', 'seo_news_keywords', 'seo_post_robots');
DELETE FROM wp_termmeta WHERE meta_key IN ('seo_desc_post_code', 'seo_title_sp', 'seo_keys_post', 'seo_url_post', 'seo_news_keywords', 'seo_post_robots');
DELETE FROM wp_commentmeta WHERE meta_key IN ('seo_desc_post_code', 'seo_title_sp', 'seo_keys_post', 'seo_url_post', 'seo_news_keywords', 'seo_post_robots');


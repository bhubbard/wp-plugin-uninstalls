-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sseo_generate_sitemap', 'sseo_ganalytics', 'sseo_g4analytics', 'sseo_default_meta_description', 'sseo_default_meta_keywords', 'woocommerce_shop_page_id', 'sseo_fb_app_id', 'sseo_twitter_username', 'sseo_gsite_verification', 'sseo_baidu', 'sseo_bing', 'sseo_yandex', 'sseo_default_meta_title', 'sseo_sitemap_post_types', 'sseo_robot_noindex', 'sseo_robot_nofollow', 'sseo_fb_title', 'sseo_fb_description', 'sseo_fb_image', 'sseo_tw_title', 'sseo_tw_description', 'sseo_tw_image', 'sseo_canonical_url');
DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sseo_meta_description', 'sseo_meta_keywords', 'sseo_canonical_url', 'sseo_robot_noindex', 'sseo_robot_nofollow', 'sseo_fb_title', 'sseo_fb_description', 'sseo_fb_image', 'sseo_tw_title', 'sseo_tw_description', 'sseo_tw_image', 'sseo_meta_title', 'sseo_fb_app_id', 'sseo_twitter_username');
DELETE FROM wp_usermeta WHERE meta_key IN ('sseo_meta_description', 'sseo_meta_keywords', 'sseo_canonical_url', 'sseo_robot_noindex', 'sseo_robot_nofollow', 'sseo_fb_title', 'sseo_fb_description', 'sseo_fb_image', 'sseo_tw_title', 'sseo_tw_description', 'sseo_tw_image', 'sseo_meta_title', 'sseo_fb_app_id', 'sseo_twitter_username');
DELETE FROM wp_termmeta WHERE meta_key IN ('sseo_meta_description', 'sseo_meta_keywords', 'sseo_canonical_url', 'sseo_robot_noindex', 'sseo_robot_nofollow', 'sseo_fb_title', 'sseo_fb_description', 'sseo_fb_image', 'sseo_tw_title', 'sseo_tw_description', 'sseo_tw_image', 'sseo_meta_title', 'sseo_fb_app_id', 'sseo_twitter_username');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sseo_meta_description', 'sseo_meta_keywords', 'sseo_canonical_url', 'sseo_robot_noindex', 'sseo_robot_nofollow', 'sseo_fb_title', 'sseo_fb_description', 'sseo_fb_image', 'sseo_tw_title', 'sseo_tw_description', 'sseo_tw_image', 'sseo_meta_title', 'sseo_fb_app_id', 'sseo_twitter_username');


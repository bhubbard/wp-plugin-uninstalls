-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seo_all_baidu_push', 'seo_all_global', 'seo_all_other', 'seo_all_sitemap', 'seo_all_index', 'seo_all_robots');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Baidu_Push', 'post_seo_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('Baidu_Push', 'post_seo_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('Baidu_Push', 'post_seo_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Baidu_Push', 'post_seo_data');


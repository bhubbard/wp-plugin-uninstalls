-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('baiduseo_zhizhu', 'baiduseo_wyc', 'baiduseo_zz', 'baiduseo_bd_chao', 'seo_baidu_sitemap', 'baiduseo_indexnow_record', 'baiduseo_google_record', 'baiduseo_liuliang', 'baiduseo_linkhh', 'baiduseo_friends_kg_num', 'baiduseo_hh_count', 'baiduseo_sm_record', 'baiduseo_auto', 'baiduseo_kp_tongbu', 'baiduseo_wzt_log', 'baiduseo_wzt_token1', 'baiduseo_wzt_token2', 'baiduseo_wzt_token3', 'baiduseo_tongchang', 'baiduseo_zhizhu_jieduan', 'baiduseo_bing_record', 'baiduseo_day_record', 'baiduseo_zz_record', 'BaiduSEO_tongji', 'baiduseo_clear', 'baiduseo_liuliang_diyu_jifen', 'baiduseo_liuliang_diyu', 'baiduseo_beian', 'baiduseo_pingfen', 'baiduseo_level', 'baiduseo_tag', 'baiduseo_rank', 'baiduseo_quanzhong', 'baiduseo_youhua', 'seo_init', 'seo_301_404_url', 'seo_alt_auto', 'seo_robots_sc', 'seo_baidu_silian', 'baiduseo_wzjc', 'baiduseo_wzjc_count', 'baiduseo_wzjc_num', 'baiduseo_yindao', 'baiduseo_jifen', 'baiduseo_sitemap_num', 'baiduseo_tongxun', 'baiduseo_zhizhu_cache');
DELETE FROM wp_options WHERE option_name LIKE 'baiduseo_cate_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('baiduseo', 'baiduseo_page', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('baiduseo', 'baiduseo_page', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('baiduseo', 'baiduseo_page', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('baiduseo', 'baiduseo_page', '_thumbnail_id');


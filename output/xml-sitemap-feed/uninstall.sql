-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xmlsf_version', 'xmlsf_sitemaps', 'xmlsf_server', 'xmlsf_disabled_providers', 'xmlsf_post_types', 'xmlsf_taxonomies', 'xmlsf_taxonomy_settings', 'xmlsf_author_settings', 'xmlsf_ping', 'xmlsf_robots', 'xmlsf_urls', 'xmlsf_custom_sitemaps', 'xmlsf_domains', 'xmlsf_news_tags', 'xmlsf_authors', 'xmlsf_post_type_settings', 'xmlsf_gsc_connect', 'xmlsf_pong', 'xmlsf_permalinks_flushed', 'xmlsf_images_meta_primed', 'xmlsf_comments_meta_primed', 'xmlsf_news_advanced', 'xmlsf_sitemaps_updated', 'xmlsf_server_updated', 'sitemap_notifier_google_submission', 'sitemap_notifier_bing_submission', 'xmlsf_images_meta_primed', 'xmlsf_comments_meta_primed', 'xmlsf_static_files', 'gsc_connect_origin', 'sitemap_notifier_access_token', 'sitemap_notifier_bing_access_token', 'sitemap_notifier_google_access_token', 'sitemap_notifier_submission', 'sitemap_notifier_submission_news', 'xmlsf_ping_google_sitemap_news', 'xmlsf_ping_google_sitemap', 'xmlsf_ping_bing_sitemap', 'xmlsf_flush_rewrite_rules', 'xmlsf_check_static_files', 'xmlsf_prefetch_post_meta_failed');
DELETE FROM wp_options WHERE option_name LIKE 'xmlsf_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_xmlsf_image_attached', '_xmlsf_image_featured', '_xmlsf_comment_date_gmt', 'term_modified', 'user_modified', '_xmlsf_exclude', '_xmlsf_news_exclude', 'term_modified_gmt', '_xmlsf_comment_date', '_xmlsf_priority');
DELETE FROM wp_usermeta WHERE meta_key IN ('_xmlsf_image_attached', '_xmlsf_image_featured', '_xmlsf_comment_date_gmt', 'term_modified', 'user_modified', '_xmlsf_exclude', '_xmlsf_news_exclude', 'term_modified_gmt', '_xmlsf_comment_date', '_xmlsf_priority');
DELETE FROM wp_termmeta WHERE meta_key IN ('_xmlsf_image_attached', '_xmlsf_image_featured', '_xmlsf_comment_date_gmt', 'term_modified', 'user_modified', '_xmlsf_exclude', '_xmlsf_news_exclude', 'term_modified_gmt', '_xmlsf_comment_date', '_xmlsf_priority');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_xmlsf_image_attached', '_xmlsf_image_featured', '_xmlsf_comment_date_gmt', 'term_modified', 'user_modified', '_xmlsf_exclude', '_xmlsf_news_exclude', 'term_modified_gmt', '_xmlsf_comment_date', '_xmlsf_priority');


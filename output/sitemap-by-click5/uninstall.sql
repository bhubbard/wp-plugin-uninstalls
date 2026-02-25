-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('click5_sitemap_url_target_blanc', 'click5_sitemap_html_pagination_items_per_page', 'click5_sitemap_html_blog_group_by', 'click5_sitemap_display_cat_tax', 'click5_sitemap_display_tag_tax', 'click5_sitemap_display_authors_tax', 'click5_sitemap_display_style', 'click5_sitemap_order_list2', 'click5_sitemap_order_list', 'click5_sitemap_order_list3', 'click5_sitemap_order_list4', 'click5_sitemap_blacklisted_array', 'click5_sitemap_display_columns', 'click5_sitemap_html_blog_sort_by', 'click5_sitemap_html_blog_order_by', 'click5_sitemap_urls_list', 'click5_sitemap_custom_sorting', 'click5_sitemap_order_list_nested', 'click5_sitemap_order_list_old', 'click5_sitemap_seo_blacklisted_array', 'click5_sitemap_seo_xml_categories', 'click5_sitemap_seo_robots_txt', 'click5_sitemap_seo_sitemap_xml', 'click5_sitemap_seo_sitemap_type', 'click5_sitemap_seo_xml_videos', 'click5_sitemap_seo_xml_images', 'click5_sitemap_seo_xml_docs', 'click5_sitemap_seo_xml_tags', 'click5_sitemap_seo_xml_authors', 'click5_sitemap_seo_robots_backup', 'click5_sitemap_seo_include_sitemap_xml', 'click5_sitemap_seo_auto', 'click5_sitemap_seo_cron', 'click5_sitemap_display_post', 'click5_sitemap_display_page', 'click5_sitemap_seo_post_type_post', 'click5_sitemap_seo_post_type_page', 'click5_sitemap_delete_robot', 'click5_sitemap_delete_robot_revert', 'click5_sitemap_create_robots_txt', 'aioseo_options', 'click5_sitemap_robots_exist', 'click5_sitemap_first_load', 'click5_sitemap_post_template_HTML', 'click5_sitemap_is_multiple_time', 'click5_sitemap_seo_xml_custom_taxonomies');
DELETE FROM wp_options WHERE option_name LIKE 'click5_sitemap_use_custom_name_%';
DELETE FROM wp_options WHERE option_name LIKE 'click5_sitemap_custom_name_text_%';
DELETE FROM wp_options WHERE option_name LIKE '%_tax';
DELETE FROM wp_options WHERE option_name LIKE 'click5_sitemap_html_blog_treat_%';
DELETE FROM wp_options WHERE option_name LIKE 'click5_sitemap_seo_post_type_%';
DELETE FROM wp_options WHERE option_name LIKE '%_custom';
DELETE FROM wp_options WHERE option_name LIKE 'click5_sitemap_authentication_token_%';
DELETE FROM wp_options WHERE option_name LIKE 'click5_sitemap_display_%';
DELETE FROM wp_options WHERE option_name LIKE 'google_ping_%';


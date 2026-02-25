#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'click5_sitemap_url_target_blanc'
wp option delete 'click5_sitemap_html_pagination_items_per_page'
wp option delete 'click5_sitemap_html_blog_group_by'
wp option delete 'click5_sitemap_display_cat_tax'
wp option delete 'click5_sitemap_display_tag_tax'
wp option delete 'click5_sitemap_display_authors_tax'
wp option delete 'click5_sitemap_display_style'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'click5_sitemap_use_custom_name_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'click5_sitemap_custom_name_text_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tax'"
wp option delete 'click5_sitemap_order_list2'
wp option delete 'click5_sitemap_order_list'
wp option delete 'click5_sitemap_order_list3'
wp option delete 'click5_sitemap_order_list4'
wp option delete 'click5_sitemap_blacklisted_array'
wp option delete 'click5_sitemap_display_columns'
wp option delete 'click5_sitemap_html_blog_sort_by'
wp option delete 'click5_sitemap_html_blog_order_by'
wp option delete 'click5_sitemap_urls_list'
wp option delete 'click5_sitemap_custom_sorting'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'click5_sitemap_html_blog_treat_%'"
wp option delete 'click5_sitemap_order_list_nested'
wp option delete 'click5_sitemap_order_list_old'
wp option delete 'click5_sitemap_seo_blacklisted_array'
wp option delete 'click5_sitemap_seo_xml_categories'
wp option delete 'click5_sitemap_seo_robots_txt'
wp option delete 'click5_sitemap_seo_sitemap_xml'
wp option delete 'click5_sitemap_seo_sitemap_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'click5_sitemap_seo_post_type_%'"
wp option delete 'click5_sitemap_seo_xml_videos'
wp option delete 'click5_sitemap_seo_xml_images'
wp option delete 'click5_sitemap_seo_xml_docs'
wp option delete 'click5_sitemap_seo_xml_tags'
wp option delete 'click5_sitemap_seo_xml_authors'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom'"
wp option delete 'click5_sitemap_seo_robots_backup'
wp option delete 'click5_sitemap_seo_include_sitemap_xml'
wp option delete 'click5_sitemap_seo_auto'
wp option delete 'click5_sitemap_seo_cron'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'click5_sitemap_authentication_token_%'"
wp option delete 'click5_sitemap_display_post'
wp option delete 'click5_sitemap_display_page'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'click5_sitemap_display_%'"
wp option delete 'click5_sitemap_seo_post_type_post'
wp option delete 'click5_sitemap_seo_post_type_page'
wp option delete 'click5_sitemap_delete_robot'
wp option delete 'click5_sitemap_delete_robot_revert'
wp option delete 'click5_sitemap_create_robots_txt'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'google_ping_%'"
wp option delete 'aioseo_options'
wp option delete 'click5_sitemap_robots_exist'
wp option delete 'click5_sitemap_first_load'
wp option delete 'click5_sitemap_post_template_HTML'
wp option delete 'click5_sitemap_is_multiple_time'
wp option delete 'click5_sitemap_seo_xml_custom_taxonomies'

# Clear Cron Jobs
wp cron event delete 'click5_sitemap_seo_cron'


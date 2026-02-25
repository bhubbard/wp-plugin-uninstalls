#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rankjet_platform_api_token'
wp option delete 'rankjet_platform_website_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rankjet_module_%'"
wp option delete 'rankjet_sitemap_enabled'
wp option delete 'rankjet_sitemap_include_posts'
wp option delete 'rankjet_sitemap_include_pages'
wp option delete 'rankjet_sitemap_include_custom_post_types'
wp option delete 'rankjet_sitemap_include_categories'
wp option delete 'rankjet_sitemap_include_tags'
wp option delete 'rankjet_sitemap_include_custom_taxonomies'
wp option delete 'rankjet_sitemap_post_changefreq'
wp option delete 'rankjet_sitemap_post_priority'
wp option delete 'rankjet_sitemap_page_changefreq'
wp option delete 'rankjet_sitemap_page_priority'
wp option delete 'rankjet_sitemap_category_changefreq'
wp option delete 'rankjet_sitemap_category_priority'
wp option delete 'rankjet_sitemap_post_tag_changefreq'
wp option delete 'rankjet_sitemap_post_tag_priority'
wp option delete 'rankjet_robots_meta_default'
wp option delete 'rankjet_display_meta_tags'
wp option delete 'rankjet_post_title_template'
wp option delete 'rankjet_post_description_template'
wp option delete 'rankjet_title_separator'
wp option delete 'rankjet_post_default_schema_type'
wp option delete 'rankjet_post_default_article_type'
wp option delete 'rankjet_page_title_template'
wp option delete 'rankjet_page_description_template'
wp option delete 'rankjet_page_default_schema_type'
wp option delete 'rankjet_page_default_article_type'
wp option delete 'rankjet_category_title_template'
wp option delete 'rankjet_category_description_template'
wp option delete 'rankjet_tag_title_template'
wp option delete 'rankjet_tag_description_template'
wp option delete 'rankjet_platform_api_url'
wp option delete 'rankjet_platform_auto_sync'
wp option delete 'rankjet_platform_last_sync'
wp option delete 'rankjet_platform_keywords'
wp option delete 'rankjet_platform_rankings'
wp option delete 'rankjet_404_ignore_patterns'
wp option delete 'rankjet_404_log_retention'
wp option delete 'rankjet_404_logs_db_version'
wp option delete 'wpseo_redirect'
wp option delete 'rankjet_auto_redirect_slug_change'
wp option delete 'rankjet_redirects_db_version'
wp option delete 'rankjet_sitemap_excluded_post_types'
wp option delete 'rankjet_sitemap_excluded_taxonomies'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rankjet_slug_redirect_created_%' OR option_name LIKE '_site_transient_rankjet_slug_redirect_created_%'"

# Clear Cron Jobs
wp cron event delete 'rankjet_sync_to_platform'
wp cron event delete 'rankjet_404_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rankjet_schema_json'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rankjet_schema_json'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rankjet_schema_json'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rankjet_schema_json'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rankjet_seo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rankjet_seo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rankjet_seo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rankjet_seo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rankjet_seo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rankjet_seo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rankjet_seo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rankjet_seo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rankjet_originality_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rankjet_originality_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rankjet_originality_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rankjet_originality_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rankjet_originality_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rankjet_originality_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rankjet_originality_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rankjet_originality_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rankjet_originality_checked_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rankjet_originality_checked_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rankjet_originality_checked_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rankjet_originality_checked_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rankjet_semantic_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rankjet_semantic_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rankjet_semantic_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rankjet_semantic_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rankjet_semantic_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rankjet_semantic_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rankjet_semantic_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rankjet_semantic_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rankjet_semantic_checked_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rankjet_semantic_checked_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rankjet_semantic_checked_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rankjet_semantic_checked_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rankjet_seo_schema'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rankjet_seo_schema'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rankjet_seo_schema'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rankjet_seo_schema'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rankjet_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rankjet_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rankjet_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rankjet_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rankjet_planner_item_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rankjet_planner_item_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rankjet_planner_item_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rankjet_planner_item_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_rich_snippet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_rich_snippet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_rich_snippet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_rich_snippet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_schema_article_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_schema_article_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_schema_article_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_schema_article_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rankjet_schema_markup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rankjet_schema_markup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rankjet_schema_markup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rankjet_schema_markup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_schema'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_schema'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_schema'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_schema'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rankjet_meta_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rankjet_meta_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rankjet_meta_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rankjet_meta_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rankjet_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rankjet_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rankjet_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rankjet_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rankjet_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rankjet_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rankjet_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rankjet_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rankjet_robots_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rankjet_robots_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rankjet_robots_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rankjet_robots_noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rankjet_canonical_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rankjet_canonical_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rankjet_canonical_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rankjet_canonical_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_noindex'"

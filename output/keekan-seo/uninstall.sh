#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'keekan_seo_api_url'
wp option delete 'keekan_seo_api_key'
wp option delete 'keekan_seo_account_email'
wp option delete 'keekan_seo_site_domain'
wp option delete 'keekan_seo_title_separator'
wp option delete 'keekan_seo_sitemap_images'
wp option delete 'keekan_seo_sitemap_video'
wp option delete 'keekan_seo_sitemap_news'
wp option delete 'keekan_seo_sitemap_taxonomies'
wp option delete 'keekan_seo_robots_rules'
wp option delete 'keekan_seo_branding'
wp option delete 'keekan_seo_social_facebook'
wp option delete 'keekan_seo_social_twitter'
wp option delete 'keekan_seo_default_og_image'
wp option delete 'keekan_seo_schema_enabled'
wp option delete 'keekan_seo_breadcrumbs_schema'
wp option delete 'keekan_seo_title_template_default'
wp option delete 'keekan_seo_description_template_default'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'keekan_seo_title_template_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'keekan_seo_description_template_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'keekan_seo_robots_default_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'keekan_seo_schema_type_%'"
wp option delete 'keekan_seo_plan_tier'
wp option delete 'keekan_seo_branding_migrated'
wp option delete 'keekan_seo_rewrites_flushed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_keekan_seo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_keekan_seo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_keekan_seo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_keekan_seo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_keekan_seo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_keekan_seo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_keekan_seo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_keekan_seo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_keekan_seo_robots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_keekan_seo_robots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_keekan_seo_robots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_keekan_seo_robots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_keekan_seo_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_keekan_seo_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_keekan_seo_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_keekan_seo_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_keekan_seo_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_keekan_seo_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_keekan_seo_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_keekan_seo_video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_keekan_seo_video_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_keekan_seo_video_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_keekan_seo_video_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_keekan_seo_video_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_keekan_seo_video_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_keekan_seo_video_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_keekan_seo_video_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_keekan_seo_video_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_keekan_seo_video_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_keekan_seo_video_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_keekan_seo_video_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_keekan_seo_video_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_keekan_seo_schema_page_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_keekan_seo_schema_page_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_keekan_seo_schema_page_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_keekan_seo_schema_page_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_keekan_seo_schema_article_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_keekan_seo_schema_article_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_keekan_seo_schema_article_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_keekan_seo_schema_article_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_keekan_seo_social_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_keekan_seo_social_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_keekan_seo_social_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_keekan_seo_social_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_keekan_seo_social_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_keekan_seo_social_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_keekan_seo_social_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_keekan_seo_social_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_keekan_seo_social_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_keekan_seo_social_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_keekan_seo_social_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_keekan_seo_social_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_keekan_seo_twitter_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_keekan_seo_twitter_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_keekan_seo_twitter_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_keekan_seo_twitter_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_keekan_seo_twitter_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_keekan_seo_twitter_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_keekan_seo_twitter_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_keekan_seo_twitter_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_keekan_seo_twitter_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_keekan_seo_twitter_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_keekan_seo_twitter_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_keekan_seo_twitter_image'"

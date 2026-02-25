#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ast_default_meta_title'
wp option delete 'ast_default_meta_description'
wp option delete 'ast_enable_schema_markup'
wp option delete 'ast_ahrefs_api_key'
wp option delete 'ast_google_analytics_id'
wp option delete 'ast_robots_txt_options'
wp option delete 'ast_sitemap_post_types'
wp option delete 'ast_sitemap_taxonomies'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ast_meta_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ast_meta_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ast_meta_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ast_meta_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ast_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ast_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ast_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ast_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ast_meta_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ast_meta_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ast_meta_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ast_meta_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ast_og_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ast_og_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ast_og_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ast_og_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ast_og_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ast_og_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ast_og_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ast_og_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ast_og_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ast_og_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ast_og_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ast_og_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ast_twitter_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ast_twitter_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ast_twitter_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ast_twitter_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ast_twitter_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ast_twitter_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ast_twitter_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ast_twitter_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ast_twitter_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ast_twitter_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ast_twitter_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ast_twitter_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"

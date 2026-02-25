#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sekhlo_llms_enabled'
wp option delete 'sekhlo_llms_content'
wp option delete 'sekhlo_sitemap_enabled'
wp option delete 'sekhlo_sitemap_include_posts'
wp option delete 'sekhlo_sitemap_include_pages'
wp option delete 'sekhlo_sitemap_include_categories'
wp option delete 'sekhlo_robots_content'
wp option delete 'sekhlo_htaccess_content'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sekhlo_seo_keyphrases'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sekhlo_seo_keyphrases'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sekhlo_seo_keyphrases'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sekhlo_seo_keyphrases'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sekhlo_seo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sekhlo_seo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sekhlo_seo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sekhlo_seo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sekhlo_seo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sekhlo_seo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sekhlo_seo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sekhlo_seo_description'"

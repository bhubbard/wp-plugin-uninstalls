#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 's3k_seo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 's3k_seo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 's3k_seo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 's3k_seo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 's3k_seo_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 's3k_seo_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 's3k_seo_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 's3k_seo_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 's3k_seo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 's3k_seo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 's3k_seo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 's3k_seo_description'"

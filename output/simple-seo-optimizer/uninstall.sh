#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simple_seo_meta_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simple_seo_meta_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simple_seo_meta_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simple_seo_meta_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simple_seo_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simple_seo_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simple_seo_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simple_seo_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simple_seo_meta_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simple_seo_meta_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simple_seo_meta_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simple_seo_meta_keywords'"

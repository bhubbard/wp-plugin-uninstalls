#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'redirect_editor'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_page_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_page_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_page_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_page_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_seo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_seo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_seo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_seo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_seo_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_seo_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_seo_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_seo_keywords'"

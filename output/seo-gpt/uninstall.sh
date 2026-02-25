#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sgpt_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_gpt_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_gpt_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_gpt_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_gpt_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_gpt_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_gpt_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_gpt_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_gpt_brand'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xbs_analytics_code'
wp option delete 'xbs_base_keywords'
wp option delete 'xbs_base_description'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xbs_meta_keywords_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xbs_meta_keywords_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xbs_meta_keywords_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xbs_meta_keywords_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xbs_meta_description_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xbs_meta_description_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xbs_meta_description_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xbs_meta_description_field'"

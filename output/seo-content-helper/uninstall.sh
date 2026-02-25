#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seo_content_helper_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sch_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sch_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sch_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sch_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_content_helper'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_content_helper'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_content_helper'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_content_helper'"

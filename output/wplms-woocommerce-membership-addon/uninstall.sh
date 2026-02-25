#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vibe_wcm_plans'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vibe_wcm_plans'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vibe_wcm_plans'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vibe_wcm_plans'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_access_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_access_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_access_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_access_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wplms_course_primary_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wplms_course_primary_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wplms_course_primary_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wplms_course_primary_product'"

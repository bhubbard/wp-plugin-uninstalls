#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bfs_order_analytics'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'student_reference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'student_reference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'student_reference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'student_reference'"

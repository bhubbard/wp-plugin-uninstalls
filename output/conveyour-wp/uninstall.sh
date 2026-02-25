#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'conveyour_domain'
wp option delete 'conveyour_appkey'
wp option delete 'conveyour_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'module_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'module_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'module_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'module_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'student_checked_answers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'student_checked_answers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'student_checked_answers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'student_checked_answers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course_id'"

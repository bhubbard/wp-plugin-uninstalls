#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'learndash_powerpack_active_classes'
wp option delete 'ld_powerpack_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfwd-course_progress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfwd-course_progress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfwd-course_progress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfwd-course_progress'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ld_auto_enroll_group_courses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ld_auto_enroll_group_courses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ld_auto_enroll_group_courses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ld_auto_enroll_group_courses'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ld_auto_enroll_group_course_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ld_auto_enroll_group_course_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ld_auto_enroll_group_course_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ld_auto_enroll_group_course_ids'"

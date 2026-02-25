#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wblg_options'
wp option delete 'learndash_settings_courses_themes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfwd-courses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfwd-courses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfwd-courses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfwd-courses'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bosld_buy_course_credits'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bosld_buy_course_credits'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bosld_buy_course_credits'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bosld_buy_course_credits'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bos_ld_unlock_lesson_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bos_ld_unlock_lesson_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bos_ld_unlock_lesson_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bos_ld_unlock_lesson_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_point_plural_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_point_plural_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_point_plural_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_point_plural_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bosld_excluded_course_point_types'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bosld_excluded_course_point_types'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bosld_excluded_course_point_types'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bosld_excluded_course_point_types'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bosld_excluded_lesson_point_types'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bosld_excluded_lesson_point_types'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bosld_excluded_lesson_point_types'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bosld_excluded_lesson_point_types'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bosld_unlocked_lessons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bosld_unlocked_lessons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bosld_unlocked_lessons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bosld_unlocked_lessons'"

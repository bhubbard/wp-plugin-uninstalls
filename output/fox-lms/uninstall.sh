#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fox_lms_quiz_integrations'
wp option delete 'fox_lms_db_version'
wp option delete 'extras_badges_trending_icon'
wp option delete 'foxlms_general_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'courseId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'courseId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'courseId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'courseId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course_builder_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course_builder_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course_builder_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course_builder_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course_sections'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course_sections'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course_sections'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course_sections'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ld_course_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ld_course_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ld_course_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ld_course_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_foxlms_lesson_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_foxlms_lesson_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_foxlms_lesson_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_foxlms_lesson_settings'"

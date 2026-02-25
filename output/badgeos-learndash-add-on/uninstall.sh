#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wn_bos_ld_options'
wp option delete 'badgeos_settings'
wp option delete 'learndash_settings_courses_taxonomies'
wp option delete 'learndash_settings_topics_taxonomies'
wp option delete 'learndash_settings_lessons_taxonomies'
wp option delete 'learndash_settings_quizzes_taxonomies'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lesson_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lesson_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lesson_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lesson_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_learndash_trigger'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_learndash_trigger'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_learndash_trigger'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_learndash_trigger'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_learndash_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_learndash_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_learndash_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_learndash_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_learndash_object_arg1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_learndash_object_arg1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_learndash_object_arg1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_learndash_object_arg1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_learndash_object_arg2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_learndash_object_arg2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_learndash_object_arg2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_learndash_object_arg2'"

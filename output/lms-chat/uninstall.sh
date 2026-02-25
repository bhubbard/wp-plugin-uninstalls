#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lmsc_config'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'allow_conversation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'allow_conversation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'allow_conversation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'allow_conversation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tutor_course_id_for_lesson'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tutor_course_id_for_lesson'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tutor_course_id_for_lesson'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tutor_course_id_for_lesson'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_parent_course'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_parent_course'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_parent_course'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_parent_course'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lesson_course'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lesson_course'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lesson_course'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lesson_course'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ir_shared_instructor_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ir_shared_instructor_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ir_shared_instructor_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ir_shared_instructor_ids'"

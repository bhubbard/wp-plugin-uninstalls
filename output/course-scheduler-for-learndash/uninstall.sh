#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'csld_version'
wp option delete 'wn_course_schedular_general_settings'
wp option delete 'wn_course_schedular_course_settings'
wp option delete 'wn_course_schedular_lesson_settings'
wp option delete 'wn_course_schedular_quiz_settings'
wp option delete 'wn_course_schedular_topic_settings'
wp option delete 'course_scheduler_ld_addon_setting'
wp option delete 'cs_ld_addon_show_course_message'
wp option delete 'cs_ld_addon_hide_course_message'
wp option delete 'cs_ld_addon_show_lesson_message'
wp option delete 'cs_ld_addon_hide_lesson_message'
wp option delete 'cs_ld_addon_show_quiz_message'
wp option delete 'cs_ld_addon_hide_quiz_message'
wp option delete 'cs_ld_addon_show_topic_message'
wp option delete 'cs_ld_addon_hide_topic_message'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Delete Transients
wp transient delete 'csld_review_dismissed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course_schedule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course_schedule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course_schedule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course_schedule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfwd-lessons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfwd-lessons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfwd-lessons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfwd-lessons'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfwd-quiz'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfwd-quiz'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfwd-quiz'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfwd-quiz'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfwd-topic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfwd-topic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfwd-topic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfwd-topic'"

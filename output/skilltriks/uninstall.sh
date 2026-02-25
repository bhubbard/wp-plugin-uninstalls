#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stlms_permalinks_flushed'
wp option delete 'stlms_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_id'"

# Delete Transients
wp transient delete 'stlms_import_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_stlms_notification_data_%' OR option_name LIKE '_site_transient_stlms_notification_data_%'"
wp transient delete 'stlms_notification_data'

# Clear Cron Jobs
wp cron event delete 'stlms_check_due_courses_daily'
wp cron event delete 'stlms_check_over_due_courses_daily'
wp cron event delete 'stlms_check_due_soon_courses_daily'
wp cron event delete 'stlms_notify_course_content_changes'
wp cron event delete 'stlms_daily_notification_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'grade_percentage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'grade_percentage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'grade_percentage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'grade_percentage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attempted_questions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attempted_questions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attempted_questions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attempted_questions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'time_str'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'time_str'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'time_str'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'time_str'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quiz_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quiz_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quiz_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quiz_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'correct_answers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'correct_answers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'correct_answers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'correct_answers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'imports_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'imports_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'imports_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'imports_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_questions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_questions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_questions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_questions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'passing_grade'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'passing_grade'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'passing_grade'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'passing_grade'"

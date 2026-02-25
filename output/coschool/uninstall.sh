#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'links_updated_date_format'
wp option delete '_certificate_html'
wp option delete 'coschool_version'
wp option delete 'coschool_install_time'
wp option delete 'coschool_initial_calls'
wp option delete 'coschool_docs_json'
wp option delete 'pluggable-blog-json'
wp option delete 'coschool_email'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cx-plugin-info-%' OR option_name LIKE '_site_transient_cx-plugin-info-%'"

# Clear Cron Jobs
wp cron event delete 'codexpert-daily'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course_banner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course_banner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course_banner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course_banner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course_faq'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course_faq'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course_faq'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course_faq'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coschool_user_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coschool_user_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coschool_user_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coschool_user_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lesson_banner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lesson_banner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lesson_banner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lesson_banner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quiz_banner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quiz_banner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quiz_banner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quiz_banner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'questions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'questions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'questions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'questions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_viewing_as'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_viewing_as'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_viewing_as'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_viewing_as'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'login_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'login_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'login_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'login_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_coschool_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_coschool_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_coschool_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_coschool_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course_review'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course_review'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course_review'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course_review'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone_number'"

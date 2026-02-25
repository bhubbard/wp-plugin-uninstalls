#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'al_version'

# Delete Transients
wp transient delete 'al-branding'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ld_adaptive_learning_stats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ld_adaptive_learning_stats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ld_adaptive_learning_stats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ld_adaptive_learning_stats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfwd-quizzes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfwd-quizzes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfwd-quizzes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfwd-quizzes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ld_al_pre_req_course_perc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ld_al_pre_req_course_perc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ld_al_pre_req_course_perc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ld_al_pre_req_course_perc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfwd-courses-levels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfwd-courses-levels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfwd-courses-levels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfwd-courses-levels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfwd-courses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfwd-courses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfwd-courses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfwd-courses'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfwd-courses_course_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfwd-courses_course_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfwd-courses_course_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfwd-courses_course_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating_action'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfwd_courses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfwd_courses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfwd_courses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfwd_courses'"

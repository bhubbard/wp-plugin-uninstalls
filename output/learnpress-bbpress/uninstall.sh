#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lp_bbpress_forum_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lp_bbpress_forum_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lp_bbpress_forum_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lp_bbpress_forum_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lp_course_forum'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lp_course_forum'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lp_course_forum'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lp_course_forum'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lp_bbpress_forum_enrolled_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lp_bbpress_forum_enrolled_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lp_bbpress_forum_enrolled_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lp_bbpress_forum_enrolled_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_forum_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_forum_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_forum_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_forum_id'"

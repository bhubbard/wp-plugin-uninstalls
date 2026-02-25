#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quiz_passmark'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quiz_passmark'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quiz_passmark'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quiz_passmark'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'grade'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'grade'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'grade'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'grade'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lesson_course'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lesson_course'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lesson_course'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lesson_course'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'sensei_completed_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'sensei_completed_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'sensei_completed_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'sensei_completed_%'"

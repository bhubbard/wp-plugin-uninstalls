#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vibe_course_qna_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vibe_course_qna_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vibe_course_qna_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vibe_course_qna_tag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dwqa_votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dwqa_votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dwqa_votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dwqa_votes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vibe_question_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vibe_question_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vibe_question_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vibe_question_unit'"

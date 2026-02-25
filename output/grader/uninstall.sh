#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'grader_grade_color'
wp option delete 'grader_comment_color'
wp option delete 'grader_warning_msg'
wp option delete 'grader_hidden_comment_text'
wp option delete 'grader_comment_delim'
wp option delete 'grader_grade_token'
wp option delete 'grader_allow_edits'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_grade_comment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_grade_comment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_grade_comment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_grade_comment'"

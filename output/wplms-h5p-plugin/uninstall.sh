#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lms_settings'
wp option delete 'h5p_track_user'
wp option delete 'h5p_save_content_state'
wp option delete 'h5p_save_content_frequency'
wp option delete 'h5p_export'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vibe_quiz_course'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vibe_quiz_course'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vibe_quiz_course'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vibe_quiz_course'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vibe_quiz_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vibe_quiz_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vibe_quiz_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vibe_quiz_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wplms_h5p_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wplms_h5p_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wplms_h5p_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wplms_h5p_content'"

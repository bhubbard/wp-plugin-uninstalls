#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hdq_settings'
wp option delete 'HDQ_PLUGIN_VERSION'
wp option delete 'HDQ_UPDATED'
wp option delete 'hdq_new_addon'

# Delete Transients
wp transient delete 'hdq_new_addon'

# Clear Cron Jobs
wp cron event delete 'hdq_check_for_updates'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdq_quiz_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdq_quiz_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdq_quiz_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdq_quiz_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdq_author_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdq_author_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdq_author_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdq_author_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdq_question_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdq_question_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdq_question_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdq_question_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'question_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'question_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'question_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'question_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quiz_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quiz_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quiz_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quiz_data'"

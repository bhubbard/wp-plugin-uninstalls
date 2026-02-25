#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hdq_a_l_members_only'
wp option delete 'hdq_quiz_results_l'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hdq_quiz_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hdq_quiz_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hdq_quiz_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hdq_quiz_type'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'totd_options'

# Delete Transients
wp transient delete 'oqp_info'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'totd_hidden_tips'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'totd_hidden_tips'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'totd_hidden_tips'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'totd_hidden_tips'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'totd_hidable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'totd_hidable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'totd_hidable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'totd_hidable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'totd_question'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'totd_question'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'totd_question'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'totd_question'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_answer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_answer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_answer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_answer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'question_answer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'question_answer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'question_answer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'question_answer'"

#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paky_feedback_submitted_author_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paky_feedback_submitted_author_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paky_feedback_submitted_author_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paky_feedback_submitted_author_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'paky_feedback_star_rating_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'paky_feedback_star_rating_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'paky_feedback_star_rating_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'paky_feedback_star_rating_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paky_feedback_submitted_author_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paky_feedback_submitted_author_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paky_feedback_submitted_author_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paky_feedback_submitted_author_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paky_feedback_admin_reply'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paky_feedback_admin_reply'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paky_feedback_admin_reply'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paky_feedback_admin_reply'"

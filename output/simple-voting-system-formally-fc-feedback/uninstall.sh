#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'svsfc_feedback_voted_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'svsfc_feedback_voted_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'svsfc_feedback_voted_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'svsfc_feedback_voted_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'svsfc_feedback_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'svsfc_feedback_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'svsfc_feedback_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'svsfc_feedback_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'svsfc_feedback_positive'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'svsfc_feedback_positive'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'svsfc_feedback_positive'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'svsfc_feedback_positive'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'svsfc_feedback_negative'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'svsfc_feedback_negative'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'svsfc_feedback_negative'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'svsfc_feedback_negative'"

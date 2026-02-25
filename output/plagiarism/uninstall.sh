#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plagiarism_editor_required'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plagiarism_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plagiarism_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plagiarism_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plagiarism_result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plagiarism_duplicate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plagiarism_duplicate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plagiarism_duplicate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plagiarism_duplicate'"

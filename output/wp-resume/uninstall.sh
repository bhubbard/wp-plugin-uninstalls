#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_resume_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_resume_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_resume_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_resume_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_resume_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_resume_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_resume_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_resume_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_resume_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_resume'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_resume'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_resume'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_resume'"

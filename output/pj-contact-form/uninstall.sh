#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'receiver_email'
wp option delete 'sender_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pjcf_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pjcf_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pjcf_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pjcf_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pjcf_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pjcf_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pjcf_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pjcf_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pjcf_fname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pjcf_fname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pjcf_fname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pjcf_fname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pjcf_lname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pjcf_lname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pjcf_lname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pjcf_lname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pjcf_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pjcf_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pjcf_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pjcf_message'"

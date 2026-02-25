#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ersvp-settings'
wp option delete 'ersvp-settings '

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'max_registrations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'max_registrations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'max_registrations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'max_registrations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'waiting_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'waiting_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'waiting_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'waiting_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'additional_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'additional_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'additional_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'additional_info'"

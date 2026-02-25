#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ict101s_contact_form_op_array'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sender_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sender_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sender_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sender_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sender_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sender_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sender_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sender_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sender_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sender_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sender_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sender_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sender_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sender_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sender_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sender_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date'"

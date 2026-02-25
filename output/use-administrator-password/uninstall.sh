#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'useadminpass_whichroles'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'allow_other_users_passwords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'allow_other_users_passwords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'allow_other_users_passwords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'allow_other_users_passwords'"

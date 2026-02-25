#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'user_forms_opt'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_forms_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_forms_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_forms_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_forms_fields'"

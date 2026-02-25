#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wposso_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_updated_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_updated_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_updated_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_updated_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ider_sub'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ider_sub'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ider_sub'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ider_sub'"

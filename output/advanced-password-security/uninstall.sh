#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aps_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aps_last_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aps_last_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aps_last_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aps_last_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aps_used_passwords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aps_used_passwords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aps_used_passwords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aps_used_passwords'"

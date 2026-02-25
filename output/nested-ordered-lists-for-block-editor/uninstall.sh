#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nolgVersion'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nolg-dismissed-%'"
wp option delete 'nolg_icon_set_children'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'type'"

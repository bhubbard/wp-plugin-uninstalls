#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpscut_setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'designation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'designation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'designation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'designation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ratings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ratings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ratings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ratings'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zwiset_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zwisettings_notices_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zwisettings_notices_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zwisettings_notices_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zwisettings_notices_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"

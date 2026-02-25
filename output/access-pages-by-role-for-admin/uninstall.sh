#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'access_pages_by_role_general'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'apbrfa-access-is-closed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'apbrfa-access-is-closed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'apbrfa-access-is-closed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'apbrfa-access-is-closed'"

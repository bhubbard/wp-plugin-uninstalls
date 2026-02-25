#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'online_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login'"

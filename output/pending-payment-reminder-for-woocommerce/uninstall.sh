#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'prfw_version'
wp option delete 'prfw_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_reminder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_reminder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_reminder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_reminder'"

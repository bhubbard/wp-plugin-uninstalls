#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Revis_Setting'
wp option delete 'Revis_Cleaned'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Revis_Setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Revis_Setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Revis_Setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Revis_Setting'"

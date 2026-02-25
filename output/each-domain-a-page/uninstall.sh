#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ruigehond007'
wp option delete 'ruigehond016_admin_messages'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ruigehond007_favicons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ruigehond007_favicons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ruigehond007_favicons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ruigehond007_favicons'"

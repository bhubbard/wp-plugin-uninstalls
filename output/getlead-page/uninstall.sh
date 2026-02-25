#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'getlead_page-api'
wp option delete 'getlead_page-widget'
wp option delete 'getlead_page-type'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'getlead_page-disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'getlead_page-disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'getlead_page-disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'getlead_page-disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'getlead_page-widget'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'getlead_page-widget'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'getlead_page-widget'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'getlead_page-widget'"

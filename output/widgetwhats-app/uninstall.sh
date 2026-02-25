#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widgetwhatsID'
wp option delete 'widgetwhatsCheckAll'
wp option delete 'widgetwhatsCheckHomepage'
wp option delete 'widgetwhatsCheckFrontpage'
wp option delete 'widgetwhatsCheckPosts'
wp option delete 'widgetwhatsCheckPages'
wp option delete 'widgetwhatsCheckProducts'
wp option delete 'widgetwhatsCheckArchive'
wp option delete 'widgetwhatsInclude'
wp option delete 'widgetwhatsExclude'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"

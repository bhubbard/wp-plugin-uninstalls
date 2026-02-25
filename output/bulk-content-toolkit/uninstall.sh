#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bulkedittoolkit_bulk_edit_plugin_version'
wp option delete 'bulkedittoolkit_bulk_edit_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%countdown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%countdown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%countdown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%countdown'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%showtext'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%showtext'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%showtext'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%showtext'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%details'"

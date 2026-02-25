#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woost_tabs'

# Delete Transients
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woost_tabs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woost_tabs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woost_tabs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woost_tabs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woost_overwrite'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woost_overwrite'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woost_overwrite'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woost_overwrite'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'woost_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'woost_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'woost_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'woost_%'"

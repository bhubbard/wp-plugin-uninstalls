#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WPShowdownOptions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lastIP'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lastIP'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lastIP'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lastIP'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shown'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'won'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'won'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'won'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'won'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'important-color'
wp option delete 'column-title'
wp option delete 'description-states'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'important'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'important'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'important'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'important'"

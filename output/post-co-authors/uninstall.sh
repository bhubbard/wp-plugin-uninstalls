#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'show_screen_metabox'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'administrator_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'administrator_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'administrator_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'administrator_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'author_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'author_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'author_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'author_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'editor_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'editor_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'editor_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'editor_id'"

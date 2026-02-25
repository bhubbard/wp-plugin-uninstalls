#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ctb_posts_to_update'
wp option delete 'ctb_cursor'
wp option delete 'ctb_running'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'block_editor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'block_editor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'block_editor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'block_editor'"

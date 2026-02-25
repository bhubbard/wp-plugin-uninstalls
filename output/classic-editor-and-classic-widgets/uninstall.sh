#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enable_block_editor_for_widgets'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cew-remember'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cew-remember'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cew-remember'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cew-remember'"

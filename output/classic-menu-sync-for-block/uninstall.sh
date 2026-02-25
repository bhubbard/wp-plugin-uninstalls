#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'classic_menu_sync_for_block_version'
wp option delete 'classic_menu_sync_for_block_settings'

# Delete Transients
wp transient delete 'classic_menu_sync_for_block_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nas_linked_menu_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nas_linked_menu_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nas_linked_menu_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nas_linked_menu_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nas_auto_sync_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nas_auto_sync_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nas_auto_sync_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nas_auto_sync_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nas_last_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nas_last_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nas_last_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nas_last_sync'"

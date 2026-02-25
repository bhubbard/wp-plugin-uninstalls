#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plui_enabled'
wp option delete 'plui_custom_text'
wp option delete 'plui_display_position'
wp option delete 'plui_disable_on_single_pages'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_plui_disable_last_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_plui_disable_last_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_plui_disable_last_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_plui_disable_last_update'"

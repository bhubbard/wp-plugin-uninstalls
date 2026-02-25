#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bp_msgat_plugin_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bp_message_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bp_message_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bp_message_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bp_message_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_bp_msgat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_bp_msgat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_bp_msgat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_bp_msgat'"

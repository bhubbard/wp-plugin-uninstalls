#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ecew_settings'
wp option delete 'ecew_settings_last_saved'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ecew_editor_choice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ecew_editor_choice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ecew_editor_choice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ecew_editor_choice'"

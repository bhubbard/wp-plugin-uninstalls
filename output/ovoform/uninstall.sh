#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ovoform_user_panel_prefix'
wp option delete 'ovoform_installed'
wp option delete 'ovoform_is_enabled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ovoform_ban'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ovoform_ban'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ovoform_ban'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ovoform_ban'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_Verify Email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_Verify Email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_Verify Email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_Verify Email'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'show_asana_upgrade_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'asana_api_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'asana_api_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'asana_api_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'asana_api_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'asana_selected_workspace'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'asana_selected_workspace'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'asana_selected_workspace'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'asana_selected_workspace'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'asana_workspace_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'asana_workspace_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'asana_workspace_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'asana_workspace_id'"

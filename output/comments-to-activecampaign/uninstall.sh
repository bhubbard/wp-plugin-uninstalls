#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ctac_api_access'
wp option delete 'ctac_activate_globally'
wp option delete 'ctac_list_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctac_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctac_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctac_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctac_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctac_list_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctac_list_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctac_list_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctac_list_id'"

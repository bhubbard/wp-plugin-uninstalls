#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_wso_general_settings'
wp option delete 'wp_wso_server_url'
wp option delete 'ms_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uniqueid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uniqueid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uniqueid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uniqueid'"

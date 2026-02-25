#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_documentation_permalinks'
wp option delete 'wp_documentation_settings'
wp option delete 'wp_documentation_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'list_serialized'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'list_serialized'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'list_serialized'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'list_serialized'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_documentation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_documentation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_documentation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_documentation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_documentation_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_documentation_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_documentation_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_documentation_settings'"

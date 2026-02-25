#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blocksolid_gateway_options'
wp option delete 'classic-editor-replace'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blocksolid_gateway_members_only'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blocksolid_gateway_members_only'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blocksolid_gateway_members_only'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blocksolid_gateway_members_only'"

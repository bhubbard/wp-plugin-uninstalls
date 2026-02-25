#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gllrxmlrpc_namespace'
wp option delete 'gllrxmlrpc_allowed_functions'
wp option delete 'gllrxmlrpc_extapi_installed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enclosure'"

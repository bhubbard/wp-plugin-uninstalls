#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'unlock_protocol_installed'
wp option delete 'unlock_protocol_version'
wp option delete 'unlock_protocol_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'unlock_ethereum_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'unlock_ethereum_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'unlock_ethereum_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'unlock_ethereum_address'"

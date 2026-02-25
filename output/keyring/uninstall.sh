#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'keyring_credentials'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'service'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'service'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'service'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'service'"

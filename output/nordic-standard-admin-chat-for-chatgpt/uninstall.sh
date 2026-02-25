#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'msac_admin_api_key'
wp option delete 'msac_admin_model'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'msac_admin_chats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'msac_admin_chats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'msac_admin_chats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'msac_admin_chats'"

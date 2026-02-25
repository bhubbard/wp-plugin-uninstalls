#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'roomlio-pk'
wp option delete 'roomlio_admin_notification'
wp option delete 'roomlio-hmac-key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'roomlio-height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'roomlio-height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'roomlio-height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'roomlio-height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'roomlio-width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'roomlio-width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'roomlio-width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'roomlio-width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'roomlio-room-key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'roomlio-room-key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'roomlio-room-key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'roomlio-room-key'"

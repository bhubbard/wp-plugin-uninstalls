#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chat_max_length'
wp option delete 'chat_message_timeout'
wp option delete 'chat_contact_timeout'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chat_blacklist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chat_blacklist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chat_blacklist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chat_blacklist'"

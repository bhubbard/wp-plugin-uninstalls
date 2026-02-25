#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'agcfre_live_chat_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'agcfre_live_chat_pagelevel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'agcfre_live_chat_pagelevel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'agcfre_live_chat_pagelevel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'agcfre_live_chat_pagelevel'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wholesalex_settings'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dokan_store_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dokan_store_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dokan_store_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dokan_store_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wholesalex_conversation_dokan_vid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wholesalex_conversation_dokan_vid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wholesalex_conversation_dokan_vid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wholesalex_conversation_dokan_vid'"

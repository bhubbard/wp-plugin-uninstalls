#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'wcfmvm_registration_static_fields'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wholesalex_conversation_vid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wholesalex_conversation_vid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wholesalex_conversation_vid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wholesalex_conversation_vid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wholesalex_registration_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wholesalex_registration_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wholesalex_registration_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wholesalex_registration_role'"

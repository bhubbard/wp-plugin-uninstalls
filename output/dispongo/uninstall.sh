#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dispongo_url_settings'
wp option delete 'dispongo_advanced_settings'
wp option delete 'dispongo_api_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dispongo_section'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dispongo_section'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dispongo_section'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dispongo_section'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dispongo_permission'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dispongo_permission'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dispongo_permission'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dispongo_permission'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'DispongoID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'DispongoID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'DispongoID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'DispongoID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'EncryptedID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'EncryptedID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'EncryptedID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'EncryptedID'"

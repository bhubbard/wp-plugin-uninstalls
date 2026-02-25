#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chk_facebook'
wp option delete 'chk_google'
wp option delete 'txt_firebase_config_json'
wp option delete 'txt_firebase_service_config_json'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'firebaseID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'firebaseID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'firebaseID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'firebaseID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'firebaseProfile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'firebaseProfile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'firebaseProfile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'firebaseProfile'"

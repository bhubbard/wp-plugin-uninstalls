#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'afcmpn_disable'
wp option delete 'afcmpn_api'
wp option delete 'afcmpn_disable_image'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'send-fcm-checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'send-fcm-checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'send-fcm-checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'send-fcm-checkbox'"

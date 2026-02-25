#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tagbee_api_key'
wp option delete 'tagbee_api_key_secret'
wp option delete 'tagbee_auto_tag'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tagbee_api_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tagbee_api_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tagbee_api_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tagbee_api_id'"

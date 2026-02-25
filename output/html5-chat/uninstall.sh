#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'html5chat_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'html5chat_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'html5chat_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'html5chat_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'html5chat_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'html5chat_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'html5chat_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'html5chat_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'html5chat_email'"
